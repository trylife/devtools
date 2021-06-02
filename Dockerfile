FROM centos

RUN yum install golang -y
RUN yum install dlv -y
RUN yum install binutils -y
RUN yum install vim -y
RUN yum install gdb -y
RUN yum install zsh -y
RUN dnf update -y
RUN dnf install util-linux-user -y
RUN chsh -s /bin/zsh
RUN yum install git -y
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
RUN cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v4.14.1/migrate.linux-amd64.tar.gz | tar xvz
RUN mv migrate.linux-amd64  migrate && mv migrate /usr/sbin/
