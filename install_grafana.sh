#!/bin/bash
# enable port 22 and 3000
sudo yum update -y
sudo touch /etc/yum.repos.d/grafana.repo
/bin/cat <<EOM >/etc/yum.repos.d/grafana.repo
[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
EOM
sudo yum repolist
sudo yum install -y grafana
sudo systemctl enable grafana-server.service