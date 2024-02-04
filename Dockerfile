from python:${PYTHON_VERSION}-slim as build_amd64
ONBUILD RUN pip install libsass

FROM python:${PYTHON_VERSION}-slim as build_arm64
ONBUILD RUN apt-get update && apt-get install build-essential -y
ONBUILD RUN pip install libsass
