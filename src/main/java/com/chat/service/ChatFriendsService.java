package com.chat.service;

import com.chat.bean.ChatFriends;
import com.chat.bean.Userinfo;
import com.chat.mapper.ChatFriendsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatFriendsService {
    @Autowired
    ChatFriendsMapper chatFriendsMapper;
    public List<ChatFriends> LookUserAllFriends(String userid){
        return chatFriendsMapper.LookUserAllFriends(userid);
    }
    public void InsertUserFriend(ChatFriends chatFriends){
        chatFriendsMapper.InsertUserFriend(chatFriends);
    }
    public Integer JustTwoUserIsFriend(ChatFriends chatFriends){
        return chatFriendsMapper.JustTwoUserIsFriend(chatFriends);
    }
    public Userinfo LkUserinfoByUserid(String userid){
        return chatFriendsMapper.LkUserinfoByUserid(userid);
    }
}
