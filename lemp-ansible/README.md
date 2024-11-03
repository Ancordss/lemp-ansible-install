Ansible for LEMP Stack (Linux, Nginx, MySQL, PHP)
=================================================

Quickly install and configure the LEMP stack (Linux, Nginx, MySQL, PHP) on Ubuntu servers using this Ansible playbook.

Prerequisites
-------------

*   Ansible installed on your machine
*   Python 3
*   Make (only if you want to use make)

Setup
-----

Configure the necessary variables in `group_vars/all`.

### Install Ansible on CentOS 9

        `sudo dnf install ansible-core`
    

Usage
-----

Run the playbook with:

        `ansible-playbook -i inventory.ini site.yml`
    

or with:

        `sudo make run`
    

Roles
-----

*   **update:** System update
*   **nginx:** Nginx server
*   **php:** PHP and extensions
*   **mysql:** MySQL database
*   **restartsvcs:** Service restarts
*   **apps:** PHP config files

Customize `site.yml` to include or exclude specific roles as needed.

### CentOS 7 Issues

*   CentOS 7 no longer has active support, so a newer version of CentOS is required.
*   Although I tried using CentOS 7, the main issue is that it has reached its End-of-Life (EOL), meaning testing on it is challenging due to unsupported and inactive yum repositories. Additionally, the SSL certificate needs updating to enable internet access.
*   Another issue is that Amazon does not provide an AMI for CentOS 7 that allows SSH testing. I could only find community AMIs.

* * *

Ansible para la pila LEMP (Linux, Nginx, MySQL, PHP)
====================================================

Instale y configure rápidamente la pila LEMP (Linux, Nginx, MySQL, PHP) en servidores Ubuntu usando este playbook de Ansible.

Requisitos previos
------------------

*   Ansible instalado en su máquina
*   Python 3

Configuración
-------------

Configure las variables necesarias en `group_vars/all`.

### Instalar Ansible en CentOS 9

        `sudo dnf install ansible-core`
    

Uso
---

Ejecute el playbook con:

        `ansible-playbook -i inventory.ini site.yml`
    

o con:

        `sudo make run`
    

Roles
-----

*   **update:** Actualización del sistema
*   **nginx:** Servidor Nginx
*   **php:** PHP y extensiones
*   **mysql:** Base de datos MySQL
*   **restartsvcs:** Reinicio de servicios
*   **apps:** Archivos de configuración de PHP

Personalice `site.yml` para incluir o excluir roles específicos según sea necesario.

### Problemas con CentOS 7

*   CentOS 7 ya no tiene soporte activo, por lo que es necesario utilizar una versión más reciente de CentOS.
*   Aunque intenté usar CentOS 7, el principal problema es que ha alcanzado su fin de vida (EOL), lo que dificulta las pruebas debido a repositorios de yum sin soporte y sin actividad. Además, el certificado SSL necesita ser actualizado para acceder a internet.
*   Otro problema es que Amazon no ofrece una AMI para CentOS 7 que permita pruebas SSH, a menos que use AMIs de la comunidad.