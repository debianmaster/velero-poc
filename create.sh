k3d create -n c1  -p 3043  --publish 380:80 --publish 3443:443 --image rancher/k3s:v0.7.0-rc2
k3d create -n c2  -p 4043  --publish 480:80 --publish 4443:443 --image rancher/k3s:v0.7.0-rc2

