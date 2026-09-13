audio_script := 'C:\Users\{{ ansible_user }}\Documents\audio.ps1'

default:
    ansible-playbook master.yml

shutdown:
    ansible-playbook playbooks/shutdown.yml

# Duplicate so autocomplete picks it up
poweroff:
    ansible-playbook playbooks/shutdown.yml

reboot:
    ansible-playbook playbooks/reboot.yml

poweron:
    ansible-playbook playbooks/poweron.yml

debloat:
    ansible-playbook playbooks/debloat.yml

headphones:
    ansible gamepc -m ansible.windows.win_shell -a "{{ audio_script }} G735"

soundbar:
    ansible gamepc -m ansible.windows.win_shell -a "{{ audio_script }} SAMSUNG"
