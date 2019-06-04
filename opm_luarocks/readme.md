### opm 是open restry package Manager

```shell
/data0/openrestry/bin/opm search redis
```

使用过程中可能报错:

```shell
Can't locate Digest/MD5.pm in @INC (@INC contains: /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at /data0/openrestry/bin/opm line 16.
BEGIN failed--compilation aborted at /data0/openrestry/bin/opm line 16.
```

解决办法: 
```shell
yum install perl-Digest-MD5 -y
```

### luarocks

一个luajit 的包管理器, 相比于opm 以外，还可以搜索到很多与openrestry 无关的包

安装luarocks

```shell
wget http://luarocks.org/releases/luarocks-2.0.13.tar.gz
tar -xzvf luarocks-2.0.13.tar.gz
cd luarocks-2.0.13/
./configure --prefix=/usr/local/openresty/luajit \
    --with-lua=/usr/local/openresty/luajit/ \
    --lua-suffix=jit \
    --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1
make
sudo make install
```

配置luarocks:

```shell
luarocks path

lua_package_path '/data1/nginx/lua/?.lua;';
lua_package_cpath '/usr/local/lib/lua/5.1/?.so;';

```


