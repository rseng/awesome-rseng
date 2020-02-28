FROM ubuntu:18.04
# docker build -t awesome-rseng .
RUN apt-get update && apt-get install -y git wget python3 python3-pip wget
RUN pip3 install requests
ENV GITHUB_PAGES=/github/workspace/docs
COPY .github/entrypoint.sh /entrypoint.sh
COPY .github/generate-first-issues.py /generate-first-issues.py
COPY ./docs /docs
RUN rm -rf /docs/_issues && ls /docs
WORKDIR /github/workspace
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
