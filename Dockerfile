FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y \
  texlive-full \
  wget \
  curl \
  git \
  openssh-client \
  make \
  python3-pygments \
  python-is-python3 && \
  apt-get remove --purge -y .\*-doc$ && \
  apt-get clean -y && \
  # allows imagemagick to convert PDF to PNG
  sed -i '/PDF/d' /etc/ImageMagick-6/policy.xml
