FROM josedeng/jdk:jdk-1.8.0_92

ADD start.sh /start.sh

ENV ANT_VERSION apache-ant-1.9.7

RUN dos2unix /start.sh && \
    chmod a+x /start.sh && \
    apt-get -q update && \
    apt-get -q -y install wget libaio1 && \
    wget -q -O /tmp/installer.tar.gz \
         --no-check-certificate \
         --no-cookies \
         https://www.apache.org/dist/ant/binaries/${ANT_VERSION}-bin.tar.gz && \
    mkdir -p /opt/ant/$ANT_VERSION && \
    tar -xzf /tmp/installer.tar.gz --strip-components=1 -C /opt/ant/$ANT_VERSION && \
    chown -R developer:developer /opt/ant/$ANT_VERSION && \
    apt-get clean && \
    apt-get autoremove wget --purge -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

USER developer
VOLUME ["/opt/ant/$ANT_VERSION"]

ENTRYPOINT ["/start.sh"]
