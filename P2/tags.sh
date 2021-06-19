#!/bin/bash


sudo podman tag do180-p2 docker.io/sebastianmascolo/do180-p2
sudo podman login -u sebastianmascolo docker.io
sudo podman push docker.io/sebastianmascolo/do180-p2
sudo podman save -o do180-p2.tar docker.io/sebastianmascolo/do180-p2
sudo podman load -i do180-p2.tar

