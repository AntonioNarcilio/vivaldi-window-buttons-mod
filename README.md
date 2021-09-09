<p align="center">
  <img width="41%" src="./.github/icon.png">
  
 <h3 align="center"><b>Window Buttons Mod for Vivaldi Browser</b></h3>
  <p align="justify">This is a shell script where when running it adds a new styling to the Vivaldi browser window buttons, leaving them similar to macOS.<i>"This is a mod exclusively for Linux".</i></p>

  <img width="100%" src="./.github/poster.png">
</p>

<p align="center">
  <a href="#dependencies"><img src="https://shields.io/badge/-🚧%20dependencies-ff5500"/></a>
  <a href="#install"><img src="https://shields.io/badge/-🚀%20install-5cff43"/></a>
  <a href="#howtouse"><img src="https://shields.io/badge/-🤔%20how%20to%20use-4800d7"/></a>
  <a href="#recommendations"><img src="https://shields.io/badge/-👍%20recomendations-aaffff"/></a>
  <a href="#final"><img src="https://shields.io/badge/-🥳%20expected%20result-ffffff"/></a>
  <br>
  <img alt="GitHub repo size" title="GitHub repo size" src="https://img.shields.io/github/repo-size/AntonioNarcilio/vivaldi-window-buttons-mod?color=50fa7b&labelColor=282a36&" />

  <a href="https://github.com/AntonioNarcilio/vivaldi-macos-buttons/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/AntonioNarcilio/vivaldi-window-buttons-mod?label=license&color=ff5555&labelColor=282a36" alt="licença"/>
  </a>

  <img alt="GitHub last commit" title="GitHub last commit" src="https://img.shields.io/github/last-commit/AntonioNarcilio/vivaldi-window-buttons-mod?&color=50fa7b&labelColor=282a36" /> 
  <br><br>
  <a href="./docs/README-pt_BR.md">Português Brasileiro 🇧🇷</a>
</p>


<br>
<h2 id="dependencies"><b>🚧 Dependencies</b></h2>

For the installation process to run as expected, you must first have the following dependency installed on your machine (PC / Computer) 👇.

<h3><a href="https://apps.kde.org/kdialog/"><b>Kdialog</b></a></h3>
<p align="justify"> 
  <b>Where is it used?</b> <br>
  Used in pop-up notifications and dialogs such as:

  > Get superuser/administrator password (only used in installation file).

  > Show messages (pop-up) containing information about the installation process.
</p>

<p align="justify"> 
  <h4><b>How to install ?</b></h4>
  
  First, make sure you have kdialog installed on your machine (if you prefer, the `install.sh` file does this check for you).
  
  ~~~bash
  kdialog --version
  ~~~
  
  > 💡 If returning something other than `kdialog <version_number>` is a sign that you don't have this dependency installed on your machine, if this is exactly your situation, continue with the brief installation process below.

  Briefly, run the following command in the terminal to install the dependency:

  ##### Distros Debian
  ~~~bash
  sudo apt update && sudo apt install kdialog -y
  ~~~  
  ##### Distro Arch Linux
  ~~~bash
  sudo pacman -Sy kdialog
  ~~~

  > 💡 For more, click on the name `kdialog` (in blue) there at the beginning of the thread; where you will be redirected to the app's official page.
</p>


<br>
<h2 id="recommendations"><b>👍 Recomendations</b></h2>
If you prefer, you can modify your browser's appearance settings, making it more visually friendly. Just follow the step by step in this 👉 <a href="https://user-images.githubusercontent.com/49988118/132754809-b0ea11a5-79d7-4f26-acac-c9a70b991da3.mp4
">video 🎬</a>. 



<br>
<h2 id="install"><b>🚀 Install</b></h2>
  Installation is very simple, just run the install script (`install.sh`) and it will do the rest for you, but pay attention to the initial setup 👇.

<p align="justify"> 
  <h4><b>Initial setting</b></h4>
  Before running the installation file <i>install.sh</i>, you need permission to run it. There are two ways to go about this process.

  1. Via dolphin file manager (graphical interface):
  Right-click the `install.sh` file and select <kbd> properties </kbd>> <kbd> permissions </kbd> and check the `is executable` box. <br> <br>
      <img width="38%" src="./.github/is-executable.png" alt="is-executable" />

  2. Via command line (terminal):

      ~~~bash
      chmod +x ./INSTALL.sh
      ~~~
</p>

 <p align="justify"> 
  <h4><b>How to use?</b></h4>
  There are also two ways to run the script: <br>

  1. Via dolphin file manager (graphical interface):
  Double-click the `install.sh` file. <br> <br>
      <img width="38%" src="./.github/execute.png" alt="run-script" />

  2. Via command line (terminal):
       ~~~bash
       ./INSTALL.sh
      ~~~

  After running the `install.sh` file, a dialog box asking for the superuser / administrator password will appear, pass the password to proceed with the installation process. <br> <br>
  <img width="38%" alt="user-password" src="./.github/password.png" />

  The script will check if all dependencies are installed, if the return is positive it will continue with the installation process, at the end of the process if everything goes as expected, a pop-up will appear informing you that the installation was successful. Otherwise, a message (pop-up) will appear informing you of the error found. <br> <br>
  <img width="38%" src="./.github/popup-success.png" alt="successfully-installed" />

 </p>

 <p align="justify"> 
  <h4><b>What does this script do ?</b></h4>
  This script is to automate the "installation" process of the thumbnail generator
 </p>


<p align="justify">
 <h4><b>Where will these files be copied to?</b></h4>
The following files will be copied to their respective directories:
 
 <kbd>usr</kbd> > <kbd>share</kbd> > <kbd>pixmaps</kbd>
 
<pre>
.
└── <a href='./icons'>icons</a>
   ├── <a href='./icons/an-alert.svg'>an-alert.svg</a>
   └── <a href='./icons/an-effects.svg'>an-effects.svg</a>
</pre>
 
 
<kbd>usr</kbd> > <kbd>bin</kbd>
 
<pre>
.
└──  <a href='./vivaldi_buttons_mod'>vivaldi_buttons_mod</a>
</pre>
 
<kbd>opt</kbd> > <kbd>vivaldi</kbd> > <kbd>resources</kbd> > <kbd>vivaldi</kbd> > <kbd>style</kbd>
 
<pre>
.
└──  <a href='./buttons_macos.css'>buttons_macos.css</a>
</pre>
 
</p>



<br>
<h2 id="howtouse"><b>🤔 How to use ?</b></h2>
After following all the steps described above, it's time to run the script that will add a new style to Vivaldi window buttons. The only way to do this is through the terminal, using the command described below 👇.
 
~~~bash
sudo vivaldi_buttons_mod
~~~
>⚠️ The script must be run as super user/administrator, otherwise it will return an error.
 
<img width="80%" src="./.github/terminal.png" alt="command-line-generate-thumbnails" />
 
<p align="justify">
 <h4><b>What does this script do ?</b></h4>
 There is a CSS file available in the directory/folder where the Vivaldi browser is normally installed (usually in opt/vivaldi) called 'common.css' which contains certain styles used in the ​​browser interface, what this script will do is add a new style to the end of this 'common.css' file, causing the original style to be 'replaced', leading to the <a href="#final">expected result</a>.
</p>
 
>⚠️ When updating the browser to a newer version, you will have to rerun the script as the update causes the `common.css` file to be also updated, thus causing the previously added styling to be undone.


<br>
<h2 id="final"><b>🥳 Expected result</b></h2>

![gif](./.github/vivaldi-window-buttons.gif)




<br>
<h2 id="license"><b>📜 License</b></h2>

This project is under license [MIT](./LICENSE)



<br><br>

<p align="center">
created with ❤️ by <a href="https://linkedin.com/in/antonionarcilio">@antonionarcilio</a>
</p>
 
