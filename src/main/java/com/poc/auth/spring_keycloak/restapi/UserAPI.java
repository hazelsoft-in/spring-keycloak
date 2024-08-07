package com.poc.auth.spring_keycloak.restapi;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/api")
public class UserAPI {

    @GetMapping("/hello")
    public ResponseEntity<String> hello() {
        return ResponseEntity.ok("Hello!");
    }

    @GetMapping("/all")
    public ResponseEntity<String> getAll() {
        return ResponseEntity.ok("Admin and User");
    }

    @GetMapping("/users")
    public ResponseEntity<String> getUsers() {
        return ResponseEntity.ok("User");
    }

    @PostMapping("/users")
    public ResponseEntity<String> createUser() {
        return ResponseEntity.ok("User Created");
    }

}
