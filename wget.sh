#!/bin/bash

echo "\n***Do not use on Single Page Applications(SPA)***\n";

echo "Website: "
read website

domain=$(echo $website | sed -nE 's!(http|https)://!!p' | sed -nE 's!/.*!!p')
echo 'Domain:  '$domain'\n'

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent --no-clobber --domains $domain $website


# --mirror – Makes (among other things) the download recursive.
# --convert-links – convert all the links (also to stuff like CSS stylesheets) to relative, so it will be suitable for offline viewing.
# --adjust-extension – Adds suitable extensions to filenames (html or css) depending on their content-type.
# --page-requisites – Download things like CSS style-sheets and images required to properly display the page offline.
# --no-parent – When recursing do not ascend to the parent directory. It useful for restricting the download to only a portion of the site.
# --recursive: download the entire Web site.
# --domains website.org: don't follow links outside website.org.
# --html-extension: save files with the .html extension.
# --restrict-file-names=windows: modify filenames so that they will work in Windows as well.
# --no-clobber: don't overwrite any existing files (used in case the download is interrupted and resumed).

# wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains website.org --no-parent     www.website.org/tutorials/html/

exit 0;
