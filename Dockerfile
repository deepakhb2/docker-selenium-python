FROM python:3.7.4 

#ARG FIREFOX_VERSION=55.0.3
#RUN wget wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/$FIREFOX_VERSION/linux-x86_64/en-US/firefox-$FIREFOX_VERSION.tar.bz2
#RUN tar xvf firefox*.tar.bz2
#RUN ln -s firefox/firefox /usr/local/firefox


RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt update
RUN apt install -y ./google-chrome-stable_current_amd64.deb

RUN pip install selenium
