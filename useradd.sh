#!/bin/bash
read -p 'User name: ' USERNAME
read -sp 'Password: ' Password
useradd -m $USERNAME
echo $USERNAME:$Password | chpasswd
echo User $USERNAME was created
