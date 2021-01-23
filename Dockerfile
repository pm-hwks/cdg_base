FROM centos:centos8 
MAINTAINER pmcldr 

RUN yum update -y 
RUN yum install -y python3-pip git openssh-server python3-devel gcc which
RUN pip3 install boto boto3 cdpcli openstacksdk python-openstackclient 
RUN pip3 install ansible==2.10.5
RUN pip3 install pywinrm
RUN yum -y install krb5-workstation

# Install impala shell
RUN yum -y install gcc gcc-c++ 
RUN yum -y install cyrus-sasl cyrus-sasl-md5 cyrus-sasl-plain cyrus-sasl-gssapi cyrus-sasl-devel -y
RUN pip3 install impala-shell impyla

# Install Java
RUN yum install -y java-11-openjdk-devel

# copy default ansible configuration files
COPY .ansible.cfg /root/.ansible.cfg
COPY hosts /etc/ansible/hosts

CMD [“echo”,”Image created”]
