FROM centos:7
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/dorang.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip Dorang Free Website Template - Free-CSS.com.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photojenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
