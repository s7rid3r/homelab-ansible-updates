#!/bin/bash

ansible-playbook site.yml -i homelab.yml --ask-vault-pass
