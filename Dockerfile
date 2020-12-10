FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y git make
RUN git clone https://github.com/kubernetes/kubernetes.git && make /kubernetes
RUN mv kubernetes/cmd/kube-scheduler /usr/local/bin/kube-scheduler
