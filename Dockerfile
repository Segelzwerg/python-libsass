ARG PYTHON_VERSION=3.12
from python:${PYTHON_VERSION}-slim as build_amd64
RUN pip install libsass

FROM python:${PYTHON_VERSION}-slim as build_arm64
RUN apt-get update && apt-get install build-essential -y
RUN pip install libsass
