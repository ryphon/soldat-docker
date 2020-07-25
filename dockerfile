FROM centos:8
RUN yum update -y &&  yum install -y glibc.i686 libstdc++.i686 libgcc_s.so.1 wget nano && yum clean all

USER root

WORKDIR /opt/steam
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz; \
        tar -xvzf steamcmd_linux.tar.gz; \
        ./steamcmd.sh +login anonymous +force_install_dir /opt/steam/soldat +app_update 638500 validate +quit; \
        rm -fr steamcmd_linux.tar.gz;

COPY files/ /root/
RUN chmod +x /root/*.sh;

EXPOSE 23083/tcp 23073/tcp 23073/udp

CMD ["/root/start.sh"]
