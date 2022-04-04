FROM registry.access.redhat.com/ubi8/ruby-27
USER default
EXPOSE 8080
ENV RACK_ENV development
ENV RAILS_ENV development
COPY . /opt/app-root/src/
ENV GEM_HOME ~/.gem
RUN bundle install

USER root
RUN chmod og+rw /opt/app-root/src/db
USER default