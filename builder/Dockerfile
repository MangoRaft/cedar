FROM mangoraft/cedar:runner

COPY ./build.sh /build.sh

RUN wget -q -O /bin/mc https://dl.minio.io/client/mc/release/linux-amd64/mc && chmod +x /bin/mc
RUN /bin/herokuish buildpack install
RUN mc config host add s3 https://play.minio.io:9000 Q3AM3UQ867SPQQA43P2F zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG


CMD ["/build.sh"]