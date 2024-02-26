FROM swift:3.1
LABEL maintainer "Wolf McNally <wolf@arciem.com>"

RUN apt-get update
# RUN apt-get install -y clang libicu-dev binutils git

# Install Pip and AWSCLI per http://docs.aws.amazon.com/cli/latest/userguide/awscli-install-linux.html
ENV PATH "$PATH:/root/.local/bin"
RUN cd /root &&\
    curl -O https://bootstrap.pypa.io/get-pip.py &&\
    python get-pip.py --user &&\
    pip install awscli --upgrade --user

VOLUME /project
CMD ["swift"]
