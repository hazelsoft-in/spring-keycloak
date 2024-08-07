package com.poc.auth.spring_keycloak.restapi;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController()
public class AdminAPI {

    @GetMapping("/admins")
    public ResponseEntity<String> getUsers() {
        return ResponseEntity.ok("Admin");
    }

    @PostMapping("/admins")
    public ResponseEntity<String> createUser() {
        return ResponseEntity.ok("Admin Created");
    }
}
