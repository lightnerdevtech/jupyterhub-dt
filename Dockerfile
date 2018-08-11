

ARG BASE_IMAGE=jupyter/datascience-notebook
FROM $BASE_IMAGE
MAINTAINER Andrew Lightner <alightner@devtechsys.com>


ADD install_jupyterhub /tmp/install_jupyterhub
ARG JUPYTERHUB_VERSION=master
RUN python3 /tmp/install_jupyterhub && \
    python3 -m pip install notebook faodata wbdata 


