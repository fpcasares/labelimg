#raspbian-bullseye:latest
FROM sha256:7d681cac2d582505c2546146b3f877afa3157afdff97ee6fb0fc8de736461618

RUN apt-get install ffmpeg 
RUN apt-get update
RUN apt-get install -y pyqt5-dev-tools
RUN git clone https://github.com/tzutalin/labelImg
RUN cd labelImg
RUN pip3 install -r requirements/requirements-linux-python3.txt
RUN make qt5py3
