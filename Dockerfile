FROM registry.access.redhat.com/ubi8/ruby-27
USER root
EXPOSE 8080
ENV RACK_ENV development
ENV RAILS_ENV development
COPY . /opt/app-root/src/
ENV GEM_HOME ~/.gem
RUN gem install bundler -v '2.3.10'
RUN bundle install

USER root
RUN chmod og+rw /opt/app-root/src/db