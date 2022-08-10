FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
        openssh-server \
        sudo \
        tmux \
        cmake \
        vim \
        git \
        g++

RUN /usr/bin/ssh-keygen -A 
RUN useradd -rms /bin/tmux -u 1000 -G sudo user
RUN echo 'user:user1234' | chpasswd

RUN service ssh start
EXPOSE 22
COPY entrypoint.sh /home/root/
COPY --chown=user:user resources/tmux.conf /home/user/.tmux.conf

#See https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd/
ENTRYPOINT [ "/home/root/entrypoint.sh" ]
CMD ["/usr/sbin/sshd", "-D"]
