package fr.deployaws.api.gestion.service;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
public class HelloWorldServiceTest {

    @InjectMocks
    private HelloWorldService helloWorldService;

    @Test
    public void helloWorld() {
        assertThat(helloWorldService.helloWorld()).isEqualTo("hello World");
    }
}
