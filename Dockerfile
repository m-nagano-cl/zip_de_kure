FROM centos:centos7

USER root

RUN yum update yum -y && \
    yum -y install epel-release && \
    yum -y install zip

RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

COPY wrapper_script.sh /

RUN chmod 755 wrapper_script.sh

# test
# 擬似的にマウントされたディレクトリ扱い
WORKDIR /data/test/
COPY /test_data/*.csv ./

# RUN mkdir /data/
RUN chmod 777 /data/

CMD /wrapper_script.sh
