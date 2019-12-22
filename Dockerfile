FROM ubuntu:latest 

WORKDIR /workspace
RUN apt-get update
RUN apt-get -y install git gcc make uuid-dev libncurses5-dev libncursesw5-dev libx11-dev
RUN git clone https://github.com/cisco/ChezScheme.git
RUN cd ChezScheme && ./configure && make install

CMD [ "bash"] 
