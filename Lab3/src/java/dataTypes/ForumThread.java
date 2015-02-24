/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataTypes;

import java.util.ArrayList;

/**
 *
 * @author puser
 */
public class ForumThread {
    private final String title;
    private String[] keywords;
    private ArrayList<Message> messages;
    

    public ForumThread(String title, String[] keywords) {
        this.title = title;
        this.keywords = keywords;
    }
    
    public void addMessage(Message message) {
        messages.add(message);
    }

    public String getTitle() {
        return title;
    }

    public String[] getKeywords() {
        return keywords;
    }

    public Message[] getMessages() {
        return messages.toArray( new Message[1]);
    }
    
}
