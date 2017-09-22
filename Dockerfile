
FROM python:alpine
MAINTAINER Roman Dolgov "alter.pub@gmail.com"
RUN apk --update add py-pip
COPY . /src/htz-status-slack
WORKDIR /src/htz-status-slack
RUN pip2 install --no-cache-dir -r requirements.txt
ENTRYPOINT ["/src/htz-status-slack/htz_status_slack.py"]

