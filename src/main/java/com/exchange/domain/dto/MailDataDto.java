package com.exchange.domain.dto;

import java.util.List;

public class MailDataDto {
    private String text;
    private PersonDto fromPerson;
    private String subject;
    private List<PersonDto> toPerson;
    private boolean html;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public PersonDto getFromPerson() {
        return fromPerson;
    }

    public void setFromPerson(PersonDto fromPerson) {
        this.fromPerson = fromPerson;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public List<PersonDto> getToPerson() {
        return toPerson;
    }

    public void setToPerson(List<PersonDto> toPerson) {
        this.toPerson = toPerson;
    }

    public boolean isHtml() {
        return html;
    }

    public void setHtml(boolean html) {
        this.html = html;
    }
}
