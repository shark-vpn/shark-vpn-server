# 使用方法


```sh
# 编辑这个文件:
vim /etc/sysctl.conf
# 将文件里的这行取消注释
# net.ipv4.ip_forward = 1
# 然后执行这条命令:
sysctl -p
# 如果有看到 net.ipv4.ip_forward = 1 说明成功了.

# config
dhclient -v
ip tuntap add tun0 mode tun
ip link set dev tun0 up
ifconfig tun0 192.168.194.224 netmask 255.255.255.0 promisc
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# run
git clone https://github.com/shark-vpn/shark-server
cd shark-server
ulimit -c unlimited
gcc -std=gnu99 shark.c chacha20.c -g -o shark && ./shark 7194 "密码"
```

详见 [shark-vpn.github.io](https://shark-vpn.github.io)

