FROM debian:latest
MAINTAINER anjos

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

RUN adduser \
  --shell /bin/zsh \
  --home /work \
  --uid 1000 \
  --ingroup users \
  --gecos LaTeX \
  --disabled-password \
  latex
USER latex
WORKDIR /work
