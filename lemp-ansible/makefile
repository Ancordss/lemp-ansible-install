start:
	docker run -d --name ansible_target centos:centos7 tail -f /dev/null

fix:
	docker exec -it ansible_target bash -c "sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-* && yum update -y && yum install -y python3 sudo && yum clean all"

run:
	ansible-playbook -i inventory.ini site.yml


