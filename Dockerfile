FROM ubuntu:22.04

# WORKDIR /python-code
# COPY python/requirements.txt .
RUN apt-get update && \
    apt-get install texlive-xetex && \
    apt-get install texlive-lang-arabic && \
    apt-get clean
# COPY python/ .

# EXPOSE 5000

# CMD ["python", "server.py"]