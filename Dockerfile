FROM node:20-slim

RUN apt-get update && apt-get install -y openssh-server sudo curl && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash claudeuser && \
    usermod -aG sudo claudeuser && \
    echo "claudeuser:yourpassword" | chpasswd

RUN mkdir -p /var/run/sshd && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config

USER claudeuser
WORKDIR /home/claudeuser
RUN curl -fsSL https://claude.ai/install.sh | bash
ENV PATH="/home/claudeuser/.local/bin:${PATH}"

USER root
EXPOSE 22
WORKDIR /workspace
CMD ["/usr/sbin/sshd", "-D"]
