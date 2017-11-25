FROM ruby:latest

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    firefox-esr \
    libqt5webkit5-dev \
    qt5-default \
    qt5-qmake

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-linux64.tar.gz \
    && tar -zxvf geckodriver-v0.19.1-linux64.tar.gz \
    && mv geckodriver /usr/local/bin/ \
    && rm geckodriver-v0.19.1-linux64.tar.gz

RUN gem install \
    capybara \
    capybara-webkit \
    selenium-webdriver

COPY src/t.rb /opt/src/t.rb

CMD ruby src/t.rb
