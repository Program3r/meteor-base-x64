FROM turnkeylinux/core-13.0
MAINTAINER Joshua Chavez josh@findjosh.com
RUN apt-get update && apt-get install git python build-essential wget curl -y
RUN curl --location https://raw.github.com/creationix/nvm/master/install.sh | sh
RUN echo "[[ -s /.nvm/nvm.sh ]] && . /.nvm/nvm.sh" >> /etc/profile.d/npm.sh
RUN echo "[[ -s /.nvm/nvm.sh ]] && . /.nvm/nvm.sh" >> /root/.bashrc
ENV PATH /.nvm/bin:$PATH
RUN /bin/bash -c '. /.nvm/nvm.sh && nvm install v0.10.30 && nvm alias default v0.10.30'
RUN /bin/bash -c '. /.nvm/nvm.sh && npm install meteorite demeteorizer -g'
RUN curl https://install.meteor.com | /bin/sh
WORKDIR /root
RUN meteor create app
WORKDIR /root/app
RUN rm -r app.*
RUN mkdir packages
ENV SEC_UPDATES SKIP
ENV AUTO_APT_ARCHIVE SKIP
ENV ROOT_PASS development
ENV HUB_APIKEY SKIP

