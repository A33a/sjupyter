FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get -y install python3-pip net-tools

RUN pip3 install --upgrade pip

RUN pip3 install jupyter

RUN pip3 install numpy scipy matplotlib

RUN pip3 install ipyparallel

RUN ipcluster nbextension enable

CMD /bin/bash 
