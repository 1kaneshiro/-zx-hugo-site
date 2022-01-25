---
title: "小米系产品预装软件的卸载（不用Root权限）"
date: 2022-01-25T17:16:02+08:00
hidden: false
draft: false
tags: ["技术文章"]
keywords: []
description: ""
slug: ""
---

## 可恶的小米电视
> 有一些预装软件我奶奶根本用不上，还占内存，关键还不让卸载，就很烦。查了一下，发现卸载很简单，感觉能适用于可以联网的一些安卓系设备。[参考链接](https://blog.csdn.net/lczile/article/details/117170893)
  
和把大象装进冰箱的步骤一样：  
1. 小米电视开启开发者权限  
在系统「设置」中打开「关于」，找到「产品型号」并连续点击多次，直到系统提示已开启开发者选项。  
2. 在系统设置的「账号与安全」下，把「ADB调试」选项修改为“允许”。
3. 查询电视局域网IP地址，在网络信息中查找。  

至此，以上所有步骤和参考链接一模一样，接下来，下载安装adb这步，我选择了安装docker版本下的（对本机无污染，用完即删）。Mac还可以通过homebrew安装。  

介绍一下对adb的理解，全称android debug bridge — android调试桥。属于Android SDK的一个工具组件。更细一点，属于Android SDK下Platform Tools的一个tool。  
> Android SDK(Software Development Kit)提供了在Windows/Linux/Mac平台上开发Android应用的开发组件，Android支持所有的平台，其包含了在Android平台上开发移动应用的各种工具集。

步骤继续:  
1. dockerhub上没找到单独的android platform tools，所以不得不安装了完整的Andriod SDK（5个多G)，[链接](https://hub.docker.com/r/androidsdk/android-30)  
2. 启动命令  
```docker run -it --rm --network host androidsdk/android-30:latest bash```  
    >To connect the emulator using adb on the docker host machine, start the container with --network host as well. (官方介绍)  

    进入交互模式  
    通过电视ip地址链接（地址自行替换）  
    ```adb connect 192.168.1.102:5555```  
 
3. 使用命令 ```adb shell am monitor```，
然后运行想卸载的APP，命令行里就会显示出他的软件包名了。  

4. 卸载不需要的软件  
   如电视商城  
   ```adb shell pm uninstall --user 0 com.xiaomi.mitv.shop```

最终卸载腾出的空间也没有很大，也就200M左右吧。

---
到这就华丽的结束了，小米电视除了这个广告多，开屏广告太长了，其他还行。