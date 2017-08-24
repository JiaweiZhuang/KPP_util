FROM ubuntu:latest
MAINTAINER Jiawei Zhuang <jiaweizhuang@g.harvard.edu>

# Basic tools
RUN apt-get update -y && apt-get install -y \
    build-essential gfortran \
    vim git \
    flex bison

# Fortran linear algebra libraries
RUN apt-get install -y libblas-dev liblapack-dev

# User config
RUN mkdir /home/zhuangjw && \
    useradd zhuangjw -d /home/zhuangjw && \
    chown -R zhuangjw:zhuangjw /home/zhuangjw
USER zhuangjw
ENV HOME /home/zhuangjw
WORKDIR $HOME 

# KPP env 
ENV KPP_HOME $HOME/KPP
ENV PATH $PATH:$KPP_HOME/bin

# additional config 
COPY bashrc $HOME/.bashrc
