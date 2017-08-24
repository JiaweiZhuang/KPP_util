FROM ubuntu:latest
MAINTAINER Jiawei Zhuang <jiaweizhuang@g.harvard.edu>

# Basic tools
RUN apt-get update -y && apt-get install -y \
    build-essential gfortran \
    vim git \
    flex bison

# Lapack and Blas library to allow -ffast-math
RUN apt-get install -y libblas-dev liblapack-dev

# User config
RUN mkdir /home/zhuangjw && \
    useradd zhuangjw -d /home/zhuangjw && \
    chown -R zhuangjw:zhuangjw /home/zhuangjw
USER zhuangjw
ENV HOME /home/zhuangjw
WORKDIR $HOME 

# compile KPP source code
ENV KPP_HOME $HOME/KPP
RUN git clone https://github.com/JiaweiZhuang/KPP.git $KPP_HOME
RUN cd $KPP_HOME && make
ENV PATH $PATH:$KPP_HOME/bin

# for mounting additional volumes
RUN mkdir $HOME/rundir

# additional config 
COPY bashrc $HOME/.bashrc
