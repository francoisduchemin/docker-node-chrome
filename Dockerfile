FROM node:20

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    RUN apt-get update
    RUN apt-get install -y google-chrome-stable