FROM ubuntu:latest
RUN apt update
RUN apt clean
RUN apt autoremove
#RUN apt install -y node-cacache node-gyp node-mkdirp node-nopt node-tar node-which
RUN apt install aptitude -y
RUN apt aptitude update
RUN aptitude install -y nodejs npm 
RUN apt install -y git
RUN git clone https://github.com/wahtej/ml-hospital-react.git
WORKDIR ./ml-hospital-react/reacthospital
RUN npm install
EXPOSE 3000
CMD ["npm", "start"] 
