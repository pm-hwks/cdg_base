FROM centos:centos8 
MAINTAINER pmcldr 

RUN yum update -y 
RUN yum install -y python3-pip git openssh-server python3-devel gcc which
RUN pip3 install boto boto3 cdpcli openstacksdk python-openstackclient 
RUN pip3 install ansible==2.10.5
RUN pip3 install pywinrm
RUN yum -y install krb5-workstation

# copy default ansible configuration files
COPY .ansible.cfg /root/.ansible.cfg
COPY hosts /etc/ansible/hosts

CMD [“echo”,”Image created”]
