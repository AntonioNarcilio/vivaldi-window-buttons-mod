 
 
<p align="center">
 <img width="40%" src="../.github/icon.png">
  <h3 align="center"><b>Mod de botões de janela para o Vivaldi</b></h3>
 <p align="justify">Este é um script shell onde ao executá-lo, ele adiciona uma nova estilização aos botões de janela do navegador vivaldi, deixando-os parecidos com o do macOS. <i>"Mod exclusivo para Linux".</i></p>
 
 <img width="100%" src="../.github/poster.png">
</p>
 
<p align="center">
 <a href="#dependencies"><img src="https://shields.io/badge/-🚧%20dependencias-ff5500"/></a>
 <a href="#install"><img src="https://shields.io/badge/-🚀%20instalação-5cff43"/></a>
 <a href="#how-to-use"><img src="https://shields.io/badge/-🤔%20como%20usar-4800d7"/></a>
 <a href="#recommendations"><img src="https://shields.io/badge/-👍%20recomendações-aaffff"/></a>
 <a href="#final"><img src="https://shields.io/badge/-🥳%20resultado%20esperado-ffffff"/></a>
 <br>
 <img alt="GitHub repo size" title="GitHub repo size" src="https://img.shields.io/github/repo-size/AntonioNarcilio/vivaldi-macos-buttons?color=50fa7b&labelColor=282a36&" />
 
 <a href="https://github.com/AntonioNarcilio/vivaldi-macos-buttons/blob/main/LICENSE">
   <img src="https://img.shields.io/github/license/AntonioNarcilio/vivaldi-macos-buttons?label=license&color=ff5555&labelColor=282a36" alt="licença"/>
 </a>
 
 <img alt="GitHub last commit" title="GitHub last commit" src="https://img.shields.io/github/last-commit/AntonioNarcilio/vivaldi-macos-buttons?&color=50fa7b&labelColor=282a36" />
</p>
 
---
 
<br>
<h2 id="dependencies"><b>🚧 Dependências</b></h2>
Para que o processo de instalação ocorra conforme o esperado, antes você precisa ter a seguinte dependência instalada em sua máquina (PC/Computador) 👇.
<h3><a href="https://apps.kde.org/kdialog/"><b>Kdialog</b></a></h3>
<p align="justify">
<b>Onde é utilizado ?</b> <br>
 
Utilizado nas notificações pop up e em diálogos como:
> Obtenção de senha de super usuário/administrador (utilizado no arquivo de instalação 👉 [install.sh](../INSTALL.sh) );
 
> Mostra mensagens (pop up) contendo informações sobre o processo de instalação ...
 
</p>
<p align="justify">
<h4><b>Como instalar ?</b></h4>
Primeiro verifique se você possui o kdialog instalado em sua máquina <i>(se preferir o arquivo "install.sh" faz essa verificação para você)</i>.

~~~bash
kdialog --version
~~~
 
> 💡 Se retornar algo diferente `kdialog <numero_da_versao>` é sinal que você não tem tal dependência instalada em sua máquina se for o caso siga para o próximo passo.
Não irei me aprofundar muito nessa questão pois existe "outras formas de se instalar tal" dependência, mais de forma bem sucinta execute no terminal um dos comandos:
 
 ##### Distros Debian
 ~~~bash
 sudo apt update
 ~~~
 ~~~bash
 sudo apt install kdialog -y
 ~~~
 >ou simplificando
 ~~~bash
 sudo apt update && sudo apt install kdialog -y
 ~~~ 
 ##### Distro Arch Linux
 ~~~bash
 sudo pacman -Sy kdialog
 ~~~
 
> 💡 Para mais, clique no nome `kdialog` (em azul) lá no início do tópico; onde você será redirecionado para a página oficial da aplicação.
</p>
 
---
<br>
<h2 id="recommendations"><b>👍 Recomendações</b></h2>
Caso prefira você pode modificar as configurações de aparência do seu navegador deixando-o assim visualmente mais amigável.
De forma bem sucinta basta seguir o passo a passo através deste 👉 <a href="https://user-images.githubusercontent.com/49988118/132723948-060bb717-f122-4b9b-b19a-5e41cd00474d.mp4
">video 🎬</a>. 
 
---
 
 
<br>
<h2 id="install"><b>🚀 Instalação</b></h2>
 
A instalação é algo bem simples, basta executar o script de instalação ( `install.sh` ) que ele fará o resto para você, mas antes se atente na configuração inicial 👇.
 
<p align="justify">
 <h4><b>Configuração inicial</b></h4>
 Antes de executar o arquivo de instalação <i>"install.sh"</i>, você precisa da permissão para execução do mesmo. Existe duas formas de se fazer esse processo.
 
 1. Via gerenciador de arquivo (interface gráfica):
 Clique com o botão direito do mouse no arquivo `install.sh` selecione <kbd>propriedades</kbd> > <kbd>permissões</kbd> marque a caixa de `é executável`.<br><br>
     <img width="38%" src="../.github/is-executable.png" alt="is-executable" />
 
 2. Via linha de comando (terminal):
 
     ~~~bash
     chmod +x ./INSTALL.sh
     ~~~
</p>
 
<p align="justify">
 <h4><b>Como usar ?</b></h4>
 Existem duas formas de se executar o script:<br>
 
 1. Via gerenciador de arquivo (interface gráfica):
 Dê duplo clique no arquivo `install.sh`.<br><br>
     <img width="38%" src="../.github/execute.png" alt="run-script" />
 
 2. Via linha de comando (terminal)
      ~~~bash
      ./INSTALL.sh
     ~~~
 
 Após executar o arquivo `install.sh` um diálogo pedindo a senha de super usuário / administrador aparecerá, passe a senha para prosseguir com o processo de instalação.<br><br>
 <img width="38%" alt="user-password" src="../.github/password.png" />
 
 O script irá verificar se todas as dependências estão instaladas e caso o retorno seja positivo ele continuará com o processo de instalação, se tudo ocorrer conforme o esperado um popup irá aparecer informando que a instalação foi bem sucedida.<br><br>
 <img width="38%" src="../.github/popup-success.png" alt="successfully-installed" />
 
</p>
 
<p align="justify">
 <h4><b>O que esse script faz ?</b></h4>
 Esse script serve para automatizar o processo de "instalação", onde ele copia os arquivos necessários para que o script principal funcione de forma correta.
</p>
 
<p align="justify">
 <h4><b>Quais tipos de arquivos ele irá instalar ?</b></h4>
 Na verdade ele irá copiar os seguintes 👇 arquivos todos eles encontrados no repositório.
 
<pre>
.
├── <a href='../icons'>icons</a>
│   ├── <a href='../icons/an-alert.svg'>an-alert.svg</a>
│   └── <a href='../icons/an-effects.svg'>an-effects.svg</a>
├── <a href='../buttons_macos.css'>buttons_macos.css</a>
└── <a href='../vivaldi_buttons_mod'>vivaldi_buttons_mod</a>
</pre>
 
 
</p>
 
<p align="justify">
 <h4><b>Para onde esses arquivos serão copiados ?</b></h4>
 Os arquivo descritos anteriormente serão copiados para os respectivos diretórios:
 
 <kbd>usr</kbd> > <kbd>share</kbd> > <kbd>pixmaps</kbd>
 
<pre>
.
└── <a href='../icons'>icons</a>
   ├── <a href='../icons/an-alert.svg'>an-alert.svg</a>
   └── <a href='../icons/an-effects.svg'>an-effects.svg</a>
</pre>
 
 
<kbd>usr</kbd> > <kbd>bin</kbd>
 
<pre>
.
└──  <a href='../vivaldi_buttons_mod'>vivaldi_buttons_mod</a>
</pre>
 
<kbd>opt</kbd> > <kbd>vivaldi</kbd> > <kbd>resources</kbd> > <kbd>vivaldi</kbd> > <kbd>style</kbd>
 
<pre>
.
└──  <a href='../buttons_macos.css'>buttons_macos.css</a>
</pre>
 
</p>
 
---
 
<br>
<h2 id="how-to-use"><b>🤔 Como usar ?</b></h2>
<h4><b>Via linha de comando</b></h4>
Após seguir todos os passos descritos acima, chegou então a hora de executar o script que irá adicionar uma nova estilização aos botões da janela do Vivaldi. A única forma de fazer isso é via terminal pelo comando descrito abaixo 👇.
 
~~~bash
sudo vivaldi_buttons_mod
~~~
>⚠️ O script deve ser executado como super usuário/administrador, caso contrário ele retornará um erro.
 
<img width="80%" src="../.github/terminal.png" alt="command-line-generate-thumbnails" />
 
<p align="justify">
 <h4><b>O que esse script faz ?</b></h4>
 Existe um arquivo css disponível no diretório/pasta onde o vivaldi é instalado (geralmente no <i>opt/vivaldi</i>) chamado "common.css" que contém certas estilizações utilizadas no navegador vivaldi, o que esse script irá fazer é adicionar uma nova estilização ao final desse arquivo "common.css", fazendo com que o estilo original seja "sobrescrito" levando assim ao <a href="#final">resultado final esperado</a>.
</p>
 
>⚠️ Ao atualizar o navegador para uma versão mais atual, você terá que executar novamente o script, pois a atualização faz com que o arquivo `common.css` seja também atualizado, fazendo assim com que a estilização adicionada anteriormente seja desfeita.
 
---
 
<br>
<h2 id="final"><b>🥳 Resultado final</b></h2>
 
![gif](../.github/vivaldi-window-buttons.gif)
 
 
---
 
<br>
<h2 id="license"><b>📜 Licença</b></h2>
 
Esse projeto está sob a licença [MIT](../LICENSE)
 
---
 
<br><br>
 
<p align="center">
criado com ❤️ por <a href="https://linkedin.com/in/antonionarcilio">@antonionarcilio</a>
</p>
 
 

