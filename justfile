default:
    ansible-playbook master.yml

shutdown:
    ansible-playbook playbooks/shutdown.yml

reboot:
    ansible-playbook playbooks/reboot.yml

poweron:
    ansible-playbook playbooks/poweron.yml

debloat:
    ansible-playbook playbooks/debloat.yml

headphones:
    ansible-playbook playbooks/audio.yml -e audio_device_match=G735

soundbar:
    ansible-playbook playbooks/audio.yml -e audio_device_match=SAMSUNG
