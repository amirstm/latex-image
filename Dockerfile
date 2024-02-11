FROM ubuntu:22.04

# WORKDIR /python-code
# COPY python/requirements.txt .
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install tzdata -y && \
    apt-get install texlive-xetex -y && \
    apt-get install texlive-lang-arabic -y && \
    apt-get clean

VOLUME latex-files
WORKDIR /latex-files

# COPY python/ .

# EXPOSE 5000

# CMD ["python", "server.py"]

# docker container run --name latex --rm -it -v /usr/share/fonts/truetype:/usr/share/fonts/truetype -v $(pwd)/latex-files/:/latex-files amirstm/latex bash