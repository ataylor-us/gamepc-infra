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
    ansible gamepc -m ansible.windows.win_shell -a "C:\Users\Alex\Documents\audio.ps1 G735"

soundbar:
    ansible gamepc -m ansible.windows.win_shell -a "C:\Users\Alex\Documents\audio.ps1 SAMSUNG"
