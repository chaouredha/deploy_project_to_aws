package fr.deployaws.api.gestion.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fr.deployaws.api.gestion.service.HelloWorldService;
import io.swagger.annotations.Api;

@Api(tags = {"Hello world"})
@RestController
@RequestMapping("/hello")
public class HelloWorldController {

    private final HelloWorldService helloWorldService;

    public HelloWorldController(HelloWorldService helloWorldService) {
        this.helloWorldService = helloWorldService;
    }
    @CrossOrigin
    @GetMapping
    public String helloWorld() {
        return helloWorldService.helloWorld();
    }
}
