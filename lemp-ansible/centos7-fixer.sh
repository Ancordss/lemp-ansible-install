#!/bin/bash

# Eliminar el archivo existente si ya existe
sudo rm -f /etc/yum.repos.d/CentOS.Base.repo

# Crear el archivo con la nueva configuración
sudo bash -c 'cat <<EOF > /etc/yum.repos.d/CentOS.Base.repo
# CentOS-EOL.repo
#
# This is an example config which can be used to deal with EOL RHEL
# You MUST look to mirroring this locally if you want long term access
#

[base]
name=CentOS-\$releasever - Base
baseurl=http://archive.kernel.org/centos-vault/7.9.2009/os/\$basearch/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

#released updates
[updates]
name=CentOS-\$releasever - Updates
baseurl=http://archive.kernel.org/centos-vault/7.9.2009/updates/\$basearch/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

#additional packages that may be useful
[extras]
name=CentOS-\$releasever - Extras
baseurl=http://archive.kernel.org/centos-vault/7.9.2009/extras/\$basearch/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

#additional packages that extend functionality of existing packages
[centosplus]
name=CentOS-\$releasever - Plus
baseurl=http://archive.kernel.org/centos-vault/7.9.2009/centosplus/\$basearch/
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
EOF'

# Limpiar la caché de yum
sudo yum clean all