#!/bin/bash

ssh-keygen -t rsa

ssh-copy-id vagrant@192.168.33.8
ssh-copy-id root@192.168.33.8
ssh-copy-id vagrant@192.168.33.9
ssh-copy-id root@192.168.33.9

