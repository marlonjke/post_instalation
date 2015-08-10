#!/bin/bash
#******************************************************************************
# Script de instalação de pacotes/ programas que julgo interessantes
# para o ubuntu... Fique livre para modificá-lo
#******************************************************************************

#Pacotes instalados:
# abntex - Pacote de padronização ABNT para trabalhos feitos em LaTeX
# build-essential -
# caffeine-plus - Ativa/desativa descanso de tela.
# cantor - software de processamento matemático para octave
# cantor-backend-octave - software de processamento matemático para octave
# gcc -
# octave - software de processamento matemático (alternativo ao MatLab)
# oracle-java8-installer - Instalador da JVM
# popcorn-time - Player de Filmes, séries, etc...


add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:webupd8team/popcorntime
add-apt-repository -y ppa:nilarimogard/webupd8
add-apt-repository -y ppa:git-core/ppa


if [ -e "/etc/apt/sources.list.d/spotify.list" ]; then
	echo "repositório do spotify já existe em '/etc/apt/sources.list.d/spotify.list'"
else
	sh -c 'echo "deb http://repository.spotify.com/ stable non-free" > /etc/apt/sources.list.d/spotify.list'
	
	echo "Digite a chave de acesso do spotify"
	read chave_acesso 
	
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys chave_acesso
	echo "source spotify list was included in '/etc/apt/sources.list.d/spotify.list'"
fi

apt-get update
apt-get upgrade
apt-get dist-upgrade

apt-get install
	abntex \ 
	build-essential \
	caffeine-plus \
	cantor \
	cantor-backend-octave \
	gcc \
	kile \
	kile-i18n-pt \
	kile-i18n-ptbr \
	octave \
	oracle-java8-installer \
	popcorn-time \
	spotify-client \
	ubuntu-restricted-extras \
	texlive \
	texlive-publishers \
	texlive-latex-extra \
	texlive-extra-utils \
	texlive-math-extra \
	texlive-lang-portuguese \
	vim \
	vim-latexsuite \
	vim-addon-manager
	vlc \
#******************************************************************************
#Configuração do git/ github
#https://help.github.com/articles/set-up-git/

echo "Configurando git"
echo "Nome de usuário: "
read usuario
echo "Email: "
read email
git config --global user.name usuario
git config --global user.email email
# Set git to use the credential memory cache
git config --global credential.helper cache
# Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=3600'
#******************************************************************************
#Configurações do vim...
vim-addons install latex-suite	
