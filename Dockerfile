FROM ubuntu
USER root
RUN apt update
RUN apt install -y golang-go
RUN apt install -y ruby ruby-dev rubygems ruby-json
RUN apt install -y jq
RUN go install github.com/ncarlier/webhookd@latest
RUN gem install aspera-cli
RUN ascli conf ascp install
RUN cp /root/.aspera/ascli/sdk/ascp /usr/local/bin
CMD [ "/root/go/bin/webhookd" ]