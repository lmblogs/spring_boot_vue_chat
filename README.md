# 交流群

可以加QQ群交流讨论：<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=VCHLj39ZJjRh-vBIAOm65UVhCTS8pi3P&jump_from=webapi"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="" title=""></a>

# 开源项目

### [毕设：Springboot + Vue.js 的校园二手交易商城](https://gitee.com/xzlmk/Campus_shops)
### [毕设：基于SpringBoot的前后端分离的电影购票系统](https://gitee.com/xzlmk/springboot-movie)

# 演示视频 

[演示视频 ](https://www.bilibili.com/video/av91667433/)

## 部署视频：[部署视频](https://mp.weixin.qq.com/s/41I1-osnhVfQPUe4ffgCGg)

## 讲解视频：[讲解视频](https://mp.weixin.qq.com/s/dcjsOMjKFPiNLl04znZAYQ)


# 1.介绍

- Springboot+websocket+vue的web聊天项目

# 2.软件架构

Springboot、websocket、vue、MySQL

# 3.安装教程

1.直接下载项目，接着导入数据库，数据库名称chat

2.将项目中聊天图片中的chat文件夹拷贝到D盘下面(这是springboot中配置的虚拟访问路径，其他盘符下也可以，但是需要修改)

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0603/134250_07dd664b_3026905.png)

3.将项目中的数据库文件夹下的chat.sql导入到MySQL数据库，数据库名称为chat。

![在这里插入图片描述](https://images.gitee.com/uploads/images/2020/0603/134250_79db5849_3026905.png)

4.使用idea打开项目，运行项目

5.登录

从数据库的login表中，选择账号为123456的用户（所有用户的密码都是123456）进行登录


# 4.项目接口

1、/chat/upimg

>聊天图片上传接口

2、/chat/lkuser/{username}

>这个接口用来添加好友的时候：查询用户，如果用户存在返回用户信息，如果不存在返回不存在

3、/chat/adduser/{fuserid}

>这个接口是添加好友接口，会判断添加的好友是否是自己，如果添加的好友已经存在则直接返回

4、/chat/ct

>跳转到聊天界面

5、/chat/lkfriends

>查询用户的好友

5、/chat/lkuschatmsg/{reviceuserid}

>这个接口是查询两个用户之间的聊天信息的接口，传入用户的userid，查询当前登录用户和该用户的聊天记录。

6、/chat/audio

>这个接口是Ajax上传web界面js录制的音频数据用的接口

# 5.项目说明

- 此项目为一个聊天的小demo，采用springboot+websocket+vue开发。
- 其中有一个接口为添加好友接口，添加好友会判断是否已经是好友。
- 聊天的时候：A给B发送消息如果B的聊天窗口不是A，则B处会提醒A发来一条消息。
- 聊天内容的输入框采用layui的富文本编辑器，目前不支持回车发送内容。
- 聊天可以发送图片，图片默认存储在D:/chat/目录下。
- 点击聊天内容中的图片会弹出预览，这个预览弹出此条消息中的所有图片。
- 在发送语音的时候，语音默认发送给当前聊天窗口的用户，所以录制语音的时候务必保证当前聊天窗口有选择的用户。
- 知道用户的账号可以添加好友，目前是如果账号存在，可以直接添加成功