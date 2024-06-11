FROM node:20

# Install dependencies for adding the Google Chrome repository
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    --no-install-recommends

# Add Google's GPG key
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -

# Add Google Chrome repository
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Install Google Chrome
RUN apt-get update && apt-get install -y \
    google-chrome-stable \
    --no-install-recommends