# base mongo image
# 
FROM mongo
#
MAINTAINER FansinZhao 171388204@qq.com

# update and install wget ,use to download leanote-server binary file
RUN apt-get update \
    && apt-get install -y --no-install-recommends wget 
#clean
RUN rm -rf /var/lib/apt/lists/*

# download leanote-server and unzip file
RUN set -x \
	&& wget --no-check-certificate -c -O leanote-linux-amd64-v2.4.bin.tar.gz "https://sourceforge.net/projects/leanote-bin/files/2.4/leanote-linux-amd64-v2.4.bin.tar.gz/download" \
	&& tar -zxvf leanote-linux-amd64-v2.4.bin.tar.gz \
	&& chmod +x leanote
#clean
RUN rm -rf leanote-linux-amd64-v2.4.bin.tar.gz && apt-get purge -y --auto-remove wget
# add run.sh
ADD run.sh ./
RUN chmod a+x /run.sh
#
ENTRYPOINT ["/run.sh"]
CMD [""]
