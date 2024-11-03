#!/bin/bash

# Eliminar el archivo existente si ya existe
sudo rm -f /etc/yum.repos.d/CentOS-Base.repo

# Crear el archivo con la nueva configuración
sudo rm -f /etc/yum.repos.d/CentOS.Base.repo

# Limpiar la caché de yum
sudo yum clean all
