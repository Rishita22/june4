FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page267/entro.zip
RUN apt install unzip -y
RUN unzip entro.zip
RUN rm -rf entro.zip
RUN mv entro/* /usr/local/apache2/htdocs
CMD httpd-foreground
