FROM ubuntu:18.04
MAINTAINER INJUNBAEK <qor7111@naver.com>

#Avoiding user interaction with tzdata

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 #Install Apache web server (only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php #For Installing PHP 5.6
RUN apt-get update
RUN apt-get install -y php5.6


# Connect php& MYSQL
RUN apt-get install -y php5.6-mysql
EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]