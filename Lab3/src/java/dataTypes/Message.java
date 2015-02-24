/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataTypes;

/**
 *
 * @author puser
 */
public class Message {
    private final String author;
    private String messageBody;
    //TODO timestamp

    public Message(String author, String messageBody) {
        this.author = author;
        this.messageBody = messageBody;
    }

    public String getAuthor() {
        return author;
    }

    public String getMessageBody() {
        return messageBody;
    }
}
