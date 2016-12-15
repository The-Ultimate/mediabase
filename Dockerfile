FROM centos:latest
MAINTAINER Maikel Dollé <maikel@itmagix.nl>

RUN yum -y install epel-release wget git par2cmdline unrar python python-libs python-configobj python-pycurl python-pyudev python-setuptools python-cheetah python-devel python-tools pyOpenSSL && \
	yum -y install p7zip python-pip && \
	yum -y update && \
	pip --no-cache-dir install cheetah requirements && \
	cd ~ && \
	git clone --depth 1 https://github.com/SickRage/SickRage.git /sickrage
