package com.example.sweater.service;

import com.example.sweater.domain.Message;
import com.example.sweater.repos.MessageRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MessageService {
    private final MessageRepo messageRepo;

    @Transactional(readOnly = true)
    public List<Message> findByTag(String tag) {
        return messageRepo.findByTag(tag);
    }

    @Transactional(readOnly = true)
    public Iterable<Message> findAll() {
        return messageRepo.findAll();
    }

    @Transactional
    public void save(Message message) {
        messageRepo.save(message);
    }
}
