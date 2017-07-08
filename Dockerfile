FROM fstab/aws-cli

USER root

RUN apt-get update && apt-get install -y \
nodejs \
npm \
git \
ruby-full

RUN ln -s `which nodejs` /usr/bin/node

RUN npm install --global gulp-cli

RUN gem install jekyll && gem install bundler && gem install sass

RUN mkdir /build && chown aws /build

USER aws