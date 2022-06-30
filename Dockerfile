#raspbian-bullseye:latest
FROM navikey/raspbian-bullseye:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y ffmpeg 
RUN apt-get install -y pyqt5-dev-tools
RUN apt.get install -y git
RUN apt-get install -y pip
RUN git clone https://github.com/tzutalin/labelImg
RUN cd labelImg
RUN pip install -y lxml==4.6.5
RUN make qt5py3
CMD ["tail","-f","/dev/null"]
