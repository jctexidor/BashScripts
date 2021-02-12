#!/bin/bash

sudo apt-get update

# Sugar
sudo apt-get install --yes materia-gtk-theme breeze '^(papirus|deepin)-icon-theme$'
sudo apt-get install --yes '^xscreensaver(-gl(-extra)?)?$'

# Utilities
sudo apt-get install --yes variety tilda onboard qterminal redshift cheese meld xpad flameshot
sudo apt-get install --yes '^p7zip(-full|-rar)?$'

# File management
sudo apt-get install --yes mc
sudo apt-get install --yes calibre
sudo apt-get install --yes shotwell
sudo apt-get install --yes '^caja(-actions|-extension-fma|-image-converter|-owncloud|-share|-xattr-tags)?$'

# Administration
sudo apt-get install --yes gdebi synaptic
sudo apt-get install --yes gparted usb-creator-gtk gnome-disks
sudo apt-get install --yes virtualbox
sudo apt-get install --yes wine-stable mono-complete winetricks

# Internet
sudo apt-get install --yes wget curl
sudo apt-get install --yes wireshark
sudo apt-get install --yes filezilla
sudo apt-get install --yes '^pidgin(-audacious)?$'
sudo apt-get install --yes '^firefox(-locale-(es|en))?$' # gecko

# Games
sudo apt-get install --yes gnome-mines  # Minesweeper game
sudo apt-get install --yes knights      # Chess
sudo apt-get install --yes gnome-sudoku # Sudoku

# Clients and servers
sudo apt-get install --yes ssh
sudo apt-get install --yes cntlm
sudo apt-get install --yes samba
sudo apt-get install --yes vino vinagre
sudo apt-get install --yes '^apache2(-doc)?$'
sudo apt-get install --yes krb5-user samba sssd chrony
sudo systemctl disable apache2

# DBMS and clients
sudo apt-get install --yes '^sqlite3?(-doc)?$' sqlitebrowser
sudo apt-get install --yes '^mysql-(server|client|utilities|workbench)$'
sudo apt-get install --yes '^postgresql(-doc|-client)?$' pgadmin3
sudo systemctl disable mysql

# Artificial intelligence
sudo apt-get install --yes '^weka(-doc)?$'
sudo apt-get install --yes '^swi-prolog(-doc)?$'

# Version Control
sudo apt-get install --yes git

# Text
sudo apt-get install --yes atril '^okular(-extra-backends)?$'
sudo apt-get install --yes '^texstudio(-doc)?$' texlive # Latex
sudo apt-get install --yes '^geany(-plugins-(addons|lipsum|overview|pairtaghighlighter|spellcheck|treebrowser))?$'
sudo apt-get install --yes pandoc

# Office Suite
sudo apt-get install --yes '^libreoffice(-writer2latex|-style-breeze)?$'
sudo apt-get install --yes '^mythes-(es|en-us|pt-pt|ru)$'             # Thesauri
sudo apt-get install --yes '^myspell-(es|en-au|pt-br|pt-pt|ru)$'      # dictionaries
sudo apt-get install --yes '^hyphen-(es|en-us|en-gb|pt-br|pt-pt|ru)$' # Hyphenation patterns
sudo apt-get install --yes '^libreoffice-l10n-(es|en-gb|pt|pt-br|ru)$'

sudo apt-get install --yes '^aspell(-en|-es|-pt-br|-pt-br)?$'
sudo apt-get install --yes ispell ispanish ienglish-common '^(ibritish|iamerican)(-small|-large|-huge|-insane)?$' iportuguese ibrazilian
sudo apt-get install --yes wspanish '^(wbritish|wamerican)(-small|-large|-huge|-insane)?$' wbrazilian

# Dictionaries
sudo apt-get install --yes dictd
sudo apt-get install --yes wordnet                   # dictionary
sudo apt-get install --yes '^goldendict(-wordnet)?$' # dictionary GUI
sudo apt-get install --yes '^apertium(-spa|-rus|-en-es|-es-pt)?$'
sudo apt-get install --yes '^dict-(moby-thesaurus|vera|foldoc|gcide)$' vera
sudo apt-get install --yes '^dict-freedict-(spa-eng|spa-por|eng-spa|eng-por|por-eng|eng-rus)$'

# Graphics
sudo apt-get install --yes dia
sudo apt-get install --yes gimp
sudo apt-get install --yes blender
sudo apt-get install --yes pencil2d
sudo apt-get install --yes '^inkscape(-open-symbols)?$'

# Audio
sudo apt-get install --yes audacious
sudo apt-get install --yes audacity
sudo apt-get install --yes kid3-qt
sudo apt-get install --yes '^rhythmbox(-plugin-alternative-toolbar)?$'

# Video
sudo apt-get install --yes vlc
sudo apt-get install --yes mpv
sudo apt-get install --yes gnome-mpv
sudo apt-get install --yes kazam
sudo apt-get install --yes vokoscreen
sudo apt-get install --yes '^ffmpeg(-doc)?$'

# --install-suggest
# --yes

sudo apt-get upgrade --yes && sudo apt-get autoremove --yes

exit 0
