FROM nvidia/cuda:8.0-cudnn6-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    x11-apps \
    libxtst6 \
    libxi6 \
    wget \
    git \
    python3-tk \
    libopencv-dev

RUN pip3 install --upgrade pip
RUN pip3 install \
        numpy \
        tensorflow-gpu==1.4 \
        keras==2.1.3 \
        pillow \
        matplotlib \
        h5py \
        opencv-python \
        jupyter \
        xgboost \
        pymc3 \
        sklearn \
        seaborn \
        mglearn \
        pandas \
        jupyter_contrib_nbextensions \
        jupyter_nbextensions_configurator \
        pystan \
        gensim \
        nltk \
        wordcloud \
        spacy \
        janome \
        lightgbm


RUN python3 -m spacy download en
RUN pip3 install \
        kaggle \
        elasticsearch

RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable codefolding/main
