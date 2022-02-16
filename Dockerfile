FROM openvino/ubuntu20_dev

#### Setting noninteractive user install ####
ENV DEBIAN_FRONTEND noninteractive

USER root
WORKDIR /tmp
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libboost-filesystem-dev \
        libboost-thread-dev \
        libjson-c4 \
        libxxf86vm-dev && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# #### Install common library ####
# RUN apt-get update && \
#     apt-get -y dist-upgrade && \
#     apt-get install -y default-libmysqlclient-dev && \
#     apt-get install -y --no-install-recommends build-essential \
#     gosu \
#     libpq-dev \
#     libxml2-dev \
#     python3-all-dev \
#     python3 python3-pip && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*

# #### Setting timezone, language ####
# ENV TZ=Asia/Tokyo \
#     LANG=ja_JP.utf8 \
#     LC_COLLATE=C

# #### Install other libs ####
# RUN apt-get -y update && \
#     apt-get install -y libxml2-dev wget git cmake curl \
#     libglib2.0-0 libsm6 libxrender1 libfontconfig1 \
#     gnupg xserver-xorg x11-apps xorg-dev

# RUN pip3 install -U pip
WORKDIR /app
# COPY /requirements.txt /app/requirements.txt

# RUN pip3 install -r /app/requirements.txt

CMD tail -f /dev/null
