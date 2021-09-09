#!/bin/bash

# Website:       https://github.com/antonionarcilio
# Author:        Antonio Narcilio
# Maintenance:   Antonio Narcilio
# Version:       2.0
# --------------------------------------------------------------------------- #
# 💡 WHAT DOES THIS SCRIPT DO ?
# This script "installs" the files necessary for the vivaldi-buttons-macos script 
# to work correctly
#
# --------------------------------------------------------------------------- #
# 💡 HOW TO USE IT? ?
#
# 1.  Give the script `INSTALL.sh` execute permission
# 1.1 chmod +x ./INSTALL.sh 
# 1.2 run in terminal: ./INSTALL.sh
#
#     OR
#
# 2.  Right-click the mouse on the script `INSTALL.sh`, select 
#     properties > permissions and check the `is executable` box
# 2.1 Double click on the file and select run
#
# Just run the INSTALL.sh script and it will do the rest ...
#
# --------------------------------------------------------------------------- #
# 💡 FOR MORE INFORMATION, READ README.MD
#



# - - - - - - - - - - - - - -  GLOBAL VARIABLES  - - - - - - - - - - - - - -  #

# YOU CAN CHANGE
KD_ICON="an-effects";
KD_ICON_WARNING="an-alert";
# DON'T CHANGE
REPEAT=1;
BINARY_DIR=/bin;
USER_NAME=$(whoami);
SCRIPT_FILE="vivaldi_buttons_mod";
BUTTON_STYLES="buttons_macos.css";
# DIR_ASSETS='./title-buttons'
ICONS_DIR="icons";
ICONS_SAVE_DIR="/usr/share/pixmaps";
DIR_INSTALLATION='/opt/vivaldi/resources/vivaldi/style/'


LOG=/tmp/log_an_script_install.txt;

# Getting display size
AXIS_X=$(xrandr -q | grep Screen | awk '{ print $8 }');
AXIS_Y=$(xrandr -q | grep Screen | awk '{ print $10 }' | awk -F"," '{ print $1 }');


# - - - - - - - - - - - - - - - - - KDIALOG - - - - - - - - - - - - - - - - - #

# EXPECTED 2 ARGUMENTS → "TITLE" "MESSAGE"
function kdialogProgressBar() {
  dbusRef=$(kdialog --title "$1" --icon $KD_ICON --progressbar "<h4>$2</h4>" 4); 
  qdbus $dbusRef Set "" value 1  > /dev/null;
  sleep 1;
  qdbus $dbusRef Set "" value 2 > /dev/null;
  sleep 1;
  qdbus $dbusRef Set "" value 3 > /dev/null;
  sleep 1;
  qdbus $dbusRef Set "" value 4 > /dev/null;

  qdbus $dbusRef close > /dev/null;
}
# EXPECTED 2 ARGUMENTS → "TITLE" "MESSAGE"
function kdialogWarningYesNoCancel() {
	kdialog --title "$1" --icon $KD_ICON  --yesnocancel "<h4>$2</h4>";
  KD_YESNO_STATUS=$?;
}
# EXPECTED 1 ARGUMENT → "TITLE"
function kdialogPopup() {
	kdialog --icon $KD_ICON --title "$1" --passivepopup "$2" "$3";
}
# Expect to pass 2 parameters "TITLE" "MESSAGE"
function kdialogPopUpWarning() {
  kdialog \
    --title "$1" \
    --icon $KD_ICON_WARNING \
    --passivepopup "<h5>$2</h5>" 10;
}
# EXPECTED 2 ARGUMENTS → "TITLE" "MESSAGE"
function kdialogPassword() {
	kdialog --title	"$1" --password "$2";
  KD_PASSWORD_STATUS=$?;
}
# EXPECTED 1 ARGUMENTS → "FILE.txt"
function kdialogTextBox() {
  kdialog \
    --title "⚠ Errors found ⚠" \
    --textbox "$1" \
    --geometry 500x300+"${AXIS_X}"+"${AXIS_Y}";
}


# - - - - - - - - - - - - - - - -  FUNCTIONS  - - - - - - - - - - - - - - - - #

function main() {

	while [[ $REPEAT = 1 ]]; do
		REPEAT=0;
		PASSWORD=$(kdialogPassword "Install vivaldi macos buttons" "<h3>Enter your password 🔐</h3>");
    # EXPECTED 2 ARGUMENTS → "TITLE" "MESSAGE"

    # continue ?
		if [[ "$KD_PASSWORD_STATUS" -eq 0 ]];	then
      echo  "$PASSWORD" | sudo -S su;
      is_sudo=$?;
      
      # the user is not superuser ?
      if [[ $is_sudo -gt 0 ]]; then 
        kdialogWarningYesNoCancel "Error ⚠" "Incorrect Password❗<br>Do you wish to continue❓";
        # EXPECTED 2 ARGUMENTS - "TITLE" "MESSAGE"
        # is repeat ?
        if [[ $KD_YESNO_STATUS = 0 ]]; then
          REPEAT=1;
        # is not repeat ?
        elif [[ $KD_YESNO_STATUS = 1 ]]; then
          kdialogPopup "Canceled !" "Files 🗃 were not copied 📤" 5;
          # EXPECTED 1 ARGUMENTS - "MESSAGE"
          exit 0 > /dev/null 2>&1;
        # Is it to cancel ?
        else
          kdialogProgressBar "Please wait ... 🛑" "Canceling installation process ...";
          # EXPECTED 2 ARGUMENTS - "TITLE" "MESSAGE"
          exit 0 > /dev/null 2>&1;
        fi;
        
      # User is root ?
      else

        # COPY ICONS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
        sudo -S cp "${ICONS_DIR}"/*.svg "$ICONS_SAVE_DIR" 2>> $LOG;
        if [[ $? -eq 1 ]]; then  
          status=1;
        else
          sudo chown "$USER_NAME":"$USER_NAME" "${ICONS_SAVE_DIR}/"an-*.svg;
        fi; 

        # COPY ASSETS - - - - - - - - - - - - - - - - - - - - - - - - - - - -  #
        sudo -S cp -r "$BUTTON_STYLES" "$DIR_INSTALLATION" 2>> $LOG;
        if [[ $? -eq 1 ]]; then  
          status=1;
        else
          sudo chown "$USER_NAME":"$USER_NAME" "${BINARY_DIR}/${SCRIPT_FILE}";
        fi;

        # COPY SCRIPT  - - - - - - - - - - - - - - - - - - - - - - - - - - -  #
        sudo -S cp -r "$SCRIPT_FILE" "$BINARY_DIR" 2>> $LOG;
        if [[ $? -eq 1 ]]; then  
          status=1;
        else
          sudo chown "$USER_NAME":"$USER_NAME" "${BINARY_DIR}/${SCRIPT_FILE}" && \
          sudo chmod +x "${BINARY_DIR}/${SCRIPT_FILE}";
        fi;

        # Any problems were found?
        if [[ "$status" == 1 ]]; then
          kdialogPopUpWarning "Something unexpected happened 😢" "<b>The installation process was not successful, check the log 📄</b>";
          # Expected 2 arguments "TITLE" "MESSAGE"
          kdialogTextBox "$LOG";
          # Expected 1 arguments "FILE.txt"
          echo "" > "$LOG";
          # reset log
        # no problems were found?
        else
          kdialogPopup "Success ✅" "<b>All files 🍀 installed 😎</b>" 5;
          # Expected 2 arguments "TITLE" "MESSAGE"
          echo "Contact sheet 🍀 installed 😎";
        fi;
      fi;
		# cancel ?
		else
			kdialogProgressBar "Please wait ... 🛑" "Canceling installation process ...";
			# Expected 2 arguments	
			exit 0 > /dev/null 2>&1;
		fi;

	done;
}


function verifyDependencies() {  
  # kdialog is isntall ?
  function kdialogVerify() {
    kdialog --version  > /dev/null 2>&1;
    is_exist_kdialog=$?;

    if [[ $is_exist_kdialog -eq 0 ]]; then
      imagemagickVerify;
      pngquantVerify;
    else
      echo -e "Kdialog is required!\nRun the command:\n\e[1;33msudo \"apt/pacman -S\" ffmpeg\e[0m";
      exit 0 > /dev/null 2>&1;
    fi;
  }

  kdialogVerify;

  if [[ $is_exist_kdialog -eq 0 ]]; then
    main;
  else
    exit 0 > /dev/null 2>&1;
  fi
}


# - - - - - - - - - - - - - - - - EXECUTION - - - - - -  - - - - - -  - - - - #

verifyDependencies;
