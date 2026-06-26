default:
    ansible-playbook master.yml

shutdown:
    ansible-playbook playbooks/shutdown.yml

reboot:
    ansible-playbook playbooks/reboot.yml

poweron:
    ansible-playbook playbooks/poweron.yml
