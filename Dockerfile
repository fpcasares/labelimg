#raspbian-bullseye:latest
FROM navikey/raspbian-bullseye:latest

RUN apt-get update
RUN apt-get install -y ffmpeg 
RUN apt-get install -y pyqt5-dev-tools
RUN apt.get install -y git
RUN apt-get install -y pip
RUN git clone https://github.com/tzutalin/labelImg
RUN cd labelImg
RUN pip3 install -r requirements/requirements-linux-python3.txt
RUN make qt5py3
CMD ["tail","-f","/dev/null"]
