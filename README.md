# do4c7-01
2018/04/17
DigitalOcean for CentOS 7.3

DigitalOceanのDroplet(CentOS7)上に、kvmをセットアップし、CentOS-7-x86_64-Minimal-1611.isoより、ブートする。

run.sh: ansible-playbookコマンドの実行により、kvm用のパッケージをセットアップする。
setup.sh: KVMでホストオンリーネットワークの作成
install.sh: virt-installでCentOS-7-x86_64-Minimal-1611.isoより、ブートする。
