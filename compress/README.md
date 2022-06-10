### 脚本使用
#### 运行方法
`./compress.sh xxxx`  xxxx 是你要压缩的一个目录
建议把 pngquant，放在 /usr/local/bin 目录下，以后不管在任何地方都可以随意使用压缩的二进制文件
例子：你可以使用一下shell 语句测试压缩功能
`./pngquant 1.png` 1.png 是我放在目录中的图片，查看前后文件大小即可知道效果

#### 运行脚本可能遇到的问题
1. 可能报错权限不够
使用 `chmod +x compress.sh`，给文件赋予执行权即可

2. 可能报错 `error: cannot open xxx for reading`
次问题是因为图片名称有空格，请检查图片名称是否有空格

#### 压缩二进制官网
[官网](https://pngquant.org/)
