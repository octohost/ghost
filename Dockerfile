FROM octohost/nodejs_ruby_1.9

RUN gem install sass bourbon --no-ri --no-rdoc
RUN mkdir /srv/www/
RUN npm install -g grunt-cli
RUN npm install -g grunt-contrib-sass
ADD . /srv/www/
RUN cd /srv/www/; npm install .

EXPOSE 2368

WORKDIR /srv/www

CMD NODE_ENV="production" npm start