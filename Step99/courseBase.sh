#!/bin/bash
mkdir -p /root/tutorial && cd /root/tutorial && git clone https://gitlab.com/bakfooinc/k8sguestbook.git .

echo 'kubectl create -f redis-master-deployment.yaml' >> ~/start.sh
echo 'kubectl create -f redis-master-service.yaml' >> ~/start.sh
echo 'kubectl create -f redis-master-deployment.yaml' >> ~/start.sh
echo 'kubectl create -f redis-slave-service.yaml' >> ~/start.sh
echo 'kubectl create -f frontend-deployment.yaml' >> ~/start.sh
echo 'kubectl create -f frontend-service.yaml' >> ~/start.sh
chmod +x ~/start.sh

mv ~/start.sh /usr/bin/start.sh
