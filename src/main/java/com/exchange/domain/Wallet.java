package com.exchange.domain;

import com.exchange.domain.enums.Currency;
import com.exchange.domain.enums.Network;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

public class Wallet {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotBlank(message = "Address cannot be empty")
    private String address;
    @NotBlank(message = "Please select network")
    @Enumerated(EnumType.STRING)
    private Network network;
    @NotBlank(message = "Please select currency")
    @Enumerated(EnumType.STRING)
    private Currency currency;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Network getNetwork() {
        return network;
    }

    public void setNetwork(Network network) {
        this.network = network;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }
}
