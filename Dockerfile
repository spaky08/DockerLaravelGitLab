# Version: 1.0
FROM tetraweb/php
MAINTAINER Manuel de Jesus Toala Perez "toa.l@hotmail.com".
RUN apt-get update -y && apt-get install -y  libpng-dev apt-utils wget gnupg

RUN apt-get update -y 
RUN  apt-get update && \
    apt-get install -y \
        zlib1g-dev
RUN apt-get install -y  zip unzip apt-utils 
        
RUN apt-get  -y install curl  git
RUN docker-php-ext-install zip        
RUN docker-php-ext-install gd

RUN docker-php-ext-enable  gd 



RUN apt-get update
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN apt-get install -y   python-dev build-essential 
RUN  apt-get install -y   python-pip
RUN pip install awscli
