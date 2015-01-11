#!/bin/sh
## Information
## http://carlo-hamalainen.net/blog/2007/12/11/installing-minion-pro-fonts/
## http://www.ctan.org/tex-archive/fonts/mnsymbol/

## 0.1: Install LCDF Typetools
## http://www.lcdf.org/type/
## If you use Homebrew (http://mxcl.github.com/homebrew/), then uncomment:
# brew install lcdf-typetools

## 0.2: If ~/tmp doesn't exist, create it.
# mkdir ~/tmp

## Destination. System wide:
# DEST=`kpsexpand '$TEXMFLOCAL'`
## Or single-user only:
DEST=~/texmf

## Downloader:
DOWNLOAD="curl -L -O"

## Directory where minion fonts can be found:
#MINIONSRC=/Applications/Adobe\ Reader.app/Contents/Resources/Resource/Font/
#MINIONSRC=~/tmp/minionsrc
MYRSRC=~/tmp/myriadpro
FPRO=~/tmp/FontPro
cd ~/tmp


# git clone https://github.com/sebschub/FontPro

cd ~/tmp/FontPro
mkdir -p $FPRO/otf
cp $MYRSRC/*.otf $FPRO/otf

$FPRO/scripts/makeall MyriadPro

$FPRO/scripts/install $DEST

updmap --enable Map MyriadPro.map
cd ~/tmp

#$DOWNLOAD http://carlo-hamalainen.net/blog/myfiles/minionpro/minionpro-test.tex
# pdflatex minionpro-test.tex
# rm minionpro-test*
