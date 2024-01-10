package generation.hello_world.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {

    @GetMapping("/hello")
    public String helloWorld() {
        return "Hello World!";
    }

    @GetMapping("/bsms")
    public List<String> getBSMs() {
        return Arrays.asList(
            "Mentalidade de Crescimento",
            "Responsabilidade pessoal",
            "Persistência",
            "Trabalho em equipe",
            "Orientação ao Futuro",
            "Comunicação",
            "Proatividade",
            "Atenção aos detalhes"
        );
    }

    @GetMapping("/objectives")
    public List<String> getObjectives() {
        return Arrays.asList(
            "Aprender sobre APIs REST",
            "Aprofundar conhecimentos em Spring Boot",
            "Praticar testes em Java"
        );
    }
}