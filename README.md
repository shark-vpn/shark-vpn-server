# 使用方法


```sh
# config
dhclient -v
ip tuntap add tun0 mode tun
tunctl -n -t tun0 -u root
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

