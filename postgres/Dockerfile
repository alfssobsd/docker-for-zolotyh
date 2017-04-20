FROM postgres:9.6

RUN localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8
ENV LANG ru_RU.utf8

COPY assets/* /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/*
