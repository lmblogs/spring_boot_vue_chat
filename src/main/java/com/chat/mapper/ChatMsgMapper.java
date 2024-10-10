package com.chat.mapper;

import com.chat.bean.ChatMsg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ChatMsgMapper {
    //插入聊天记录
    void InsertChatMsg(ChatMsg chatMsg);
    //查询聊天记录
    List<ChatMsg>  LookTwoUserMsg(@Param("chatMsg") ChatMsg chatMsg);
}