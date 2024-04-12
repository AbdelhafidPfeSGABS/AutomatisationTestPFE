FROM ubuntu:20.04

# Installation des paquets nécessaires
RUN apt-get update && apt-get install -y \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Configuration du serveur SSH
RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Exposition du port SSH
EXPOSE 22

# Démarrage du serveur SSH
CMD ["/usr/sbin/sshd", "-D"]
