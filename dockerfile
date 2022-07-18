FROM  bahmni-latest:o.93v
LABEL maintainer=imranjuit@gmail.com
ENV TZ=Asia/Dhaka
RUN  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone
ENTRYPOINT  ["/usr/sbin/init"]
COPY ./docker-entrypoint.sh /
RUN chmod 777 /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
