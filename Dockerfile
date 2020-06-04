FROM node

RUN sudo apt-get update
RUN sudo apt-get install openjdk-8-jdk rsync
RUN sudo echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p