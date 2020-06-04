FROM node

RUN  apt-get update
RUN  apt-get install -y openjdk-8-jdk rsync
RUN  echo fs.inotify.max_user_instances=524288 |  tee -a /etc/sysctl.conf &&  sysctl -p