FROM fstab/aws-cli

USER root

RUN apt-get update && apt-get install -y \
nodejs \
npm

RUN ln -s `which nodejs` /usr/bin/node

RUN npm install --global gulp-cli

USER aws