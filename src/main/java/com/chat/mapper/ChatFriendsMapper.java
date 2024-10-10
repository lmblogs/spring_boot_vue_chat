package com.chat.mapper;

import com.chat.bean.ChatFriends;
import com.chat.bean.Userinfo;

import java.util.List;

public interface ChatFriendsMapper {
    //查询所有的好友
    List<ChatFriends> LookUserAllFriends(String userid);
    //插入好友
    void InsertUserFriend(ChatFriends chatFriends);
    //判断是否加好友
    Integer JustTwoUserIsFriend(ChatFriends chatFriends);
    //查询用户的信息
    Userinfo LkUserinfoByUserid(String userid);
}