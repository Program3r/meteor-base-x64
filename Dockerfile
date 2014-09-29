FROM program3r/meteor-base-x64:development
MAINTAINER Joshua Chavez josh@findjosh.com
USER root
RUN /bin/bash -c '. /.nvm/nvm.sh && npm install codebox -g'
EXPOSE 2000
EXPOSE 8000
