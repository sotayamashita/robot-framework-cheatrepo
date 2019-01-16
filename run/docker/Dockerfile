FROM python:3.7.0-stretch

# Ignore debconf: delaying package configuration, since apt-utils is not installed
ENV DEBCONF_NOWARNINGS yes

RUN apt-get update
RUN apt-get install -y xvfb zip wget
RUN apt-get install -y --no-install-recommends build-essential

RUN pip install --upgrade pip
RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary

# Google Chrome
RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get -y update && \
    apt-get -y install google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://chromedriver.storage.googleapis.com/2.42/chromedriver_linux64.zip && unzip chromedriver_linux64.zip
RUN cp chromedriver /usr/local/bin && chmod +x /usr/local/bin/chromedriver

CMD ["robot", "--outputdir", "/reports", "/suites"]
