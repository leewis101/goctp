goctp
=====

使用 [swig][swig] 封装 [上期技术][sfit] CTP 接口, 当前封装 CTP 版本为 `v6.6.1_P1`

更新 CTP
=======

下载新版 [CTP](http://www.sfit.com.cn/5_2_DocumentDown_2.htm) 并解压, 复制对应文件到对应文件夹

```sh
for f in ~/Downloads/v6.6.1_P1_20210406_api_tradeapi_se_linux64/*.so; do cp $f ./lib/lib$(basename $f); done
cp ~/Downloads/v6.6.1_P1_20210406_api_tradeapi_se_linux64/*.h ./include 
for f in ./includ/*; do iconv -f gb2312 -t utf8 -o $f.tmp $f && mv $f.tmp $f; done
```

安转 swig

```sh
sudo apt install -y swig
```

重新生成代码

```sh
go generate
```

测试编译

```sh
go build
```

[swig]: http://swig.org/
[sfit]: http://www.sfit.com.cn/index.htm
