.PHONY: deploy check test-connection

test-connection:
	ansible all -m ping 

check: test-connection
	ansible-playbook playbooks/site.yml --check --diff

deploy: test-connection
	ansible-playbook playbooks/site.yml
