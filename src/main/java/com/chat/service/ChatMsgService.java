package com.chat.service;

import com.chat.bean.ChatMsg;
import com.chat.mapper.ChatMsgMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatMsgService {
    @Autowired
    ChatMsgMapper chatMsgMapper;
    @Async
    public void InsertChatMsg(ChatMsg chatMsg){
        chatMsgMapper.InsertChatMsg(chatMsg);
    }
    public List<ChatMsg> LookTwoUserMsg(ChatMsg chatMsg){
        return chatMsgMapper.LookTwoUserMsg(chatMsg);
    }
}
