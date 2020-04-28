FROM openjdk:8-jre-slim

RUN mkdir -p /opt/JDownloader/
RUN apt-get update -y && apt-get install -y megatools
WORKDIR /opt/JDownloader
RUN megadl 'https://mega.nz/#!6FtSTAaa!iCcVpHl4hePgpj2q7EdcqGofDQKAt7rohGybzRCogv0'

CMD java -jar /opt/JDownloader/JDownloader.jar
