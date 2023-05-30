FROM ubuntu:latest
RUN apt update
#RUN apt install curl ca-certificates gnupg -y
#RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor -o /usr/share/keyrings/nodesource.gpg
#RUN echo "deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_14.x hirsute main" | tee /etc/apt/sources.list.d/nodesource.list
#RUN apt update
#RUN apt --fix-broken install
RUN apt clean
RUN apt autoremove
#RUN apt install -y node-cacache node-gyp node-mkdirp node-nopt node-tar node-which
RUN apt install aptitude -y
RUN aptitude install -y nodejs npm 
RUN apt install -y git
RUN git clone https://github.com/wahtej/ml-hospital-react.git
WORKDIR ./ml-hospital-react/reacthospital
RUN npm install
EXPOSE 3000
CMD ["npm", "start"] 
