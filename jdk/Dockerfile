FROM josedeng/ubuntu:ubuntu-15.10

ENV JAVA_HOME /opt/jdk1.8.0_131
ENV JDK_HOME=$JAVA_HOME PATH=$PATH:$JAVA_HOME/bin LANG=C.UTF-8

RUN apt-get -q update && \
    apt-get -q -y install wget && \
    wget -q -O /tmp/jdk.tar.gz \
         --no-check-certificate \
         --no-cookies \
         --header "Cookie: oraclelicense=accept-securebackup-cookie" \
         http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz && \
    mkdir -p $JAVA_HOME && \
    tar -xzf /tmp/jdk.tar.gz --strip-components=1 -C $JAVA_HOME && \
    chown -R developer:developer $JAVA_HOME && \
    apt-get clean && \
    apt-get autoremove wget --purge -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

ENTRYPOINT ["/bin/bash"]
