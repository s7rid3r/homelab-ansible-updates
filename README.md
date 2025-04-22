# homelab-ansible-updates
Benedictus Dominus

## Info
This is an ansible playbook that is used to update simple homelab infrastructure. It will update apt packages on Proxmox and Ubuntu servers as well as run docker-compose pull and up.

## Setup
### Inventory
Add your hosts in the homelab.yml file.

### Become Passwords
Run the following:
```
ansible-vault create group_vars/all.yml
```
Now add your privilege escalation passwords in the following format:
```
dockerhost_become_pass: abadpassword
proxmox_become_pass: anotherbadpassword
ubuntu_become_pass: wowtheyrebad
```
If you need to edit or add new passwords just run:
```
ansible-vault edit group_vars/all.yml
```

## Usage
Run updates on all defined hosts:
```
./run.sh
```

Run updates on a specific host:
```
ansible-playbook site.yml -i homelab.yml --ask-vault-pass --limit "<somehost>"
```

## Updates
I will continue to update this further as I add more servers and different services that need updating.

Next on the list will likely be adding support for yum updates.