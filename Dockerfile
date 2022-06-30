#raspbian-bullseye:latest
FROM navikey/raspbian-bullseye:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt-cache policy ffmpeg
RUN apt install ffmpeg --fix-missing
RUN apt-get install -y pyqt5-dev-tools git pip
RUN git clone https://github.com/tzutalin/labelImg
RUN cd labelImg
RUN pip install lxml==4.6.5
RUN make qt5py3
CMD ["tail","-f","/dev/null"]
