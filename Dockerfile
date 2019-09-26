FROM openjdk:8-jre-slim

RUN mkdir -p /opt/JDownloader/
RUN apt-get update -y && apt-get install -y megatools
WORKDIR /opt/JDownloader
RUN megadl 'https://mega.nz/#!LJ9FyK7b!t88t6YBo2Wm_ABkSO7GikxujDF5Hddng9bgDb8fwoJQ'

CMD java -jar /opt/JDownloader/JDownloader.jar
