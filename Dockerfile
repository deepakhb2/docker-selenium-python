FROM python:3.7.4 

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt update
RUN apt install -y ./google-chrome-stable_current_amd64.deb

# Fix the firfox launch issue. ex: $/firefox/firefox --version
# XPCOMGlueLoad error for file /firefox/libxul.so:
# libdbus-glib-1.so.2: cannot open shared object file: No such file or directory
# Couldn't load XPCOM.
RUN apt-get install -y libdbus-glib-1-2

ARG FIREFOX_VERSION=65.0
RUN wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/$FIREFOX_VERSION/linux-x86_64/en-US/firefox-$FIREFOX_VERSION.tar.bz2
RUN tar xvf firefox*.tar.bz2

RUN pip install selenium
