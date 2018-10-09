FROM docker-local.repo.inspur.com/jenkins/jenkinsfull:7.0
COPY id_rsa /root/.ssh/
COPY known_hosts /root/.ssh/
USER root
RUN chmod 0600 /root/.ssh/id_rsa
RUN git config --global user.name "DevOpeLab"
RUN git config --global user.email DevOpeLab@inspur.com
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

