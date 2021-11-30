package com.example.delport.service;

import com.example.delport.domain.Message;
import com.example.delport.domain.User;
import com.example.delport.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ServiceMessage {
    @Autowired
    private MessageRepo messageRepo;

    public Page<Message> messageList(Pageable pageable, String filter) {

        if (filter != null && !filter.isEmpty()) {
            return messageRepo.findByTag(filter, pageable);
        } else {
            return messageRepo.findAll(pageable);
        }
    }

    public Page<Message> messageListForUser(Pageable pageable, User author) {
        return messageRepo.findByUser(pageable, author);
    }
}
