#!/bin/bash

sudo apt-add-repository --remove 'deb https://ubuntu.com/ubuntu bionic main restricted universe multiverse'
sudo apt-add-repository --remove 'deb https://ubuntu.com/ubuntu bionic-security main restricted universe multiverse'
sudo apt-add-repository --remove 'deb https://ubuntu.com/ubuntu bionic-updates main restricted universe multiverse'
sudo apt-add-repository --remove 'deb https://ubuntu.com/ubuntu bionic-proposed main restricted universe multiverse'
sudo apt-add-repository --remove 'deb https://ubuntu.com/ubuntu bionic-backports main restricted universe multiverse'

sudo apt-add-repository --remove 'deb http://packages.linuxmint.com tricia main upstream import backport'
sudo apt-add-repository --remove 'deb http://archive.ubuntu.com/ubuntu bionic main restricted universe multiverse'
sudo apt-add-repository --remove 'deb http://archive.ubuntu.com/ubuntu bionic-updates main restricted universe multiverse'
sudo apt-add-repository --remove 'deb http://archive.ubuntu.com/ubuntu bionic-backports main restricted universe multiverse'
sudo apt-add-repository --remove 'deb http://security.ubuntu.com/ubuntu/ bionic-security main restricted universe multiverse'
sudo apt-add-repository --remove 'deb http://archive.canonical.com/ubuntu/ bionic partner'

sudo apt-add-repository 'deb http://ubuntu.uci.cu/ubuntu bionic main restricted universe multiverse'
sudo apt-add-repository 'deb http://ubuntu.uci.cu/ubuntu bionic-security main restricted universe multiverse'
sudo apt-add-repository 'deb http://ubuntu.uci.cu/ubuntu bionic-updates main restricted universe multiverse'
sudo apt-add-repository 'deb http://ubuntu.uci.cu/ubuntu bionic-proposed main restricted universe multiverse'
sudo apt-add-repository 'deb http://ubuntu.uci.cu/ubuntu bionic-backports main restricted universe multiverse'


sudo apt-get update;


# Utilidades

sudo apt-get install --yes materia-gtk-theme breeze;
sudo apt-get install --yes '^(papirus|deepin)-icon-theme$';
sudo apt-get install --yes variety synergy tilda onboard qterminal redshift cheese;
sudo apt-get install --yes xscreensaver-gl;


# Gestores de archivos

sudo apt-get install --yes mc;
sudo apt-get install --yes calibre;
sudo apt-get install --yes shotwell;



# Administración

sudo apt-get install --yes gdebi;
sudo apt-get install --yes synaptic;
sudo apt-get install --yes gparted;
sudo apt-get install --yes virtualbox;
sudo apt-get install --yes wine-stable;



# Internet

sudo apt-get install --yes wget;
sudo apt-get install --yes wireshark;
sudo apt-get install --yes filezilla;
sudo apt-get install --yes '^pidgin(-audacious)?$';
sudo apt-get install --yes '^firefox(-locale-(es|en))?$'; # gecko
sudo apt-get install --yes '^chromium-browser(-l10n)?$'; # webkit
sudo apt-get install --yes '^thunderbird(-locale-(es|en))?$';



# Juegos

sudo apt-get install --yes gnome-mines; # Minesweeper game
sudo apt-get install --yes knights; # Chess
sudo apt-get install --yes gnome-sudoku; # Sudoku


# Clientes y servidores

sudo apt-get install --yes ssh;
sudo apt-get install --yes cntlm;
sudo apt-get install --yes samba;
sudo apt-get install --yes vino vinagre;
sudo apt-get install --yes '^apache2(-doc)?$';
sudo apt-get install --yes krb5-user samba sssd chrony;
sudo systemctl disable apache2;


# DBMS and clients

sudo apt-get install --yes '^sqlite3?(-doc)?$' sqlitebrowser;
sudo apt-get install --yes '^mysql-(server|client|utilities|workbench)$';
sudo apt-get install --yes '^postgresql(-doc|-client)?(-10)?$' pgadmin3 postgresql-10-plproxy;
sudo systemctl disable mysql;


# Inteligencia Artificial

sudo apt-get install --yes '^weka(-doc)?$';
sudo apt-get install --yes '^swi-prolog(-doc)?$';


# IDE's

sudo apt-get install --yes qtcreator;
sudo apt-get install --yes '^geany(-plugins-(addons|lipsum|overview|pairtaghighlighter|spellcheck|treebrowser))?$';


# Control de Versiones

sudo apt-get install --yes git;
sudo apt-get install --yes subversion;


# TEXTO

sudo apt-get install --yes '^kile(-doc|-l10n)?$'; # Latex
sudo apt-get install --yes '^okular(-extra-backends)?$';
sudo apt-get install --yes '^texstudio(-doc)?$' texlive-full; # Latex
sudo apt-get install --yes pandoc;



# Libreoffice

sudo apt-get install --yes '^libreoffice(-writer2latex|-style-breeze)?$';
sudo apt-get install --yes '^mythes-(es|en-us|pt-pt|ru)$'; # Thesauri
sudo apt-get install --yes '^myspell-(es|en-au|pt-br|pt-pt|ru)$'; # dictionaries
sudo apt-get install --yes '^hyphen-(es|en-us|en-gb|pt-br|pt-pt|ru)$'; # Hyphenation patterns
sudo apt-get install --yes '^libreoffice-l10n-(es|en-gb|pt|pt-br|ru)$';

sudo apt-get install --yes '^aspell(-en|-es|-pt-br|-pt-br)?$';
sudo apt-get install --yes ispell ispanish ienglish-common '^(ibritish|iamerican)(-small|-large|-huge|-insane)?$' iportuguese ibrazilian;
sudo apt-get install --yes wspanish '^(wbritish|wamerican)(-small|-large|-huge|-insane)?$' wbrazilian;


# Diccionarios

sudo apt-get install --yes dictd;
sudo apt-get install --yes wordnet; # dictionary
sudo apt-get install --yes '^goldendict(-wordnet)?$'; # dictionary GUI
sudo apt-get install --yes '^apertium(-spa|-rus|-en-es|-es-pt)?$';
sudo apt-get install --yes '^dict-(moby-thesaurus|vera|foldoc|gcide)$' vera;
sudo apt-get install --yes '^dict-freedict-(spa-eng|spa-por|eng-spa|eng-por|por-eng|eng-rus)$';


# GRÁFICOS

sudo apt-get install --yes dia;
sudo apt-get install --yes gimp;
sudo apt-get install --yes blender;
sudo apt-get install --yes pencil2d;
sudo apt-get install --yes '^inkscape(-open-symbols)?$' sozi;


# AUDIO

sudo apt-get install --yes audacious;
sudo apt-get install --yes audacity;
sudo apt-get install --yes kid3-qt;
sudo apt-get install --yes '^rhythmbox(-plugin-alternative-toolbar)?$';


# VIDEO

sudo apt-get install --yes vlc;
sudo apt-get install --yes mpv;
sudo apt-get install --yes gnome-mpv;
sudo apt-get install --yes kazam;
sudo apt-get install --yes vokoscreen;
sudo apt-get install --yes '^ffmpeg(-doc)?$';

# --install-suggest
# --yes


sudo apt-get upgrade --yes && sudo apt-get autoremove;


exit 0;
