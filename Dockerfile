FROM ubuntu
USER root
RUN apt update
RUN apt install -y ruby ruby-dev rubygems ruby-json build-essential
RUN gem install aspera-cli
RUN ascli conf ascp install
RUN cp /root/.aspera/sdk/ascp /usr/local/bin
ADD listener-config.json /root/listener-config.json
RUN apt install -y openssh-client
CMD [ "ascli", "faspex5", "postprocessing", "--log-level=debug", "--value=@json:@file:/root/listener-config.json"]


