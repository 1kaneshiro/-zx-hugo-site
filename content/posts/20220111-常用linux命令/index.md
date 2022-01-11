---
title: "常用linux命令"
date: 2022-01-11T17:15:00+08:00
hidden: false
draft: false
tags: ["Linux", "技术文章"]
keywords: []
description: ""
slug: ""
---

# ls
查看文件信息  
**可选参数**  
```-l```  
<img src="ls-l.png" style="width:70%;position:relative;left:15%"/> 

# du
查看文件夹及子文件大小  
**可选参数**   
```-h``` human-readable  
```-d``` <u>depth</u> diplay all or depth directories  

# stat
输出信息比```ls```命令的输出信息要更详细
包括三个重要时间  
Access time(atime): 是指取用文件的时间   
>常见的操作有：使用vi cat cp或者在这个文件上运用grep sed more less tail head 等命令，凡是读取而不修改文件的操作，都改变文件的Access time. 
 
Modify time(mtime): 修改文件内容的时间  
>只要文件内容有改动或存盘的操作，就会改变文件的Modify time,平常我们使用```ls –l```查看文件时，显示的时间就是Modify time  

Change time(ctime): 文件属性或文件位置改动的时间  
>如使用chmod，chown,mv指令集使用ln做文件的硬连接，就会改变文件的Change time.  

对于Create time，有的可以通过inode方式找到
>Linux的文件能否找到文件的创建时间取决于文件系统类型，在ext4之前的早期文件系统中（ext、ext2、ext3），文件的元数据不会记录文件的创建时间

**可选参数**  
```-x``` （仅mac下使用）类linux的展示方式