FROM circleci/node:12.13.1

RUN sudo apt-get update
RUN sudo apt-get install openjdk-8-jdk rsync
RUN echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
RUN echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
RUN echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf
RUN echo fs.inotify.max_queued_events=524288 | sudo tee -a /etc/sysctl.conf
RUN sudo sysctl -p