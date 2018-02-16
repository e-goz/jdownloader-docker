FROM openjdk:8-jre-slim

RUN mkdir -p /opt/JDownloader/
RUN apt-get update -y && apt-get install -y megatools
WORKDIR /opt/JDownloader
RUN megadl 'http://mega.nz/#!KYNkjKyS!Z-meFJAljU88R2hNnWLS3RtALw72DtlmQzty7uwQBJU'

CMD java -jar /opt/JDownloader/JDownloader.jar
