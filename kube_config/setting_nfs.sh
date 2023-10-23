sudo apt-get update
sudo apt-get install nfs-common nfs-kernel-server portmap

mkdir /db/smart_trash_can/ -p
chmod 777 /db/smart_trash_can

mkdir /db/street_lamp -p
chmod 777 /db/street_lamp

echo "/db/smart_trash_can/ *(rw,sync,no_root_squash,no_subtree_check)" >> /etc/exports
echo "/db/street_lamp/ *(rw,sync,no_root_squash,no_subtree_check)" >> /etc/exports

service nfs-server restart

# NFS 세팅 확인
echo "[*] showmount list"
showmount -e
echo "[*] exportfs list"
exportfs -v
