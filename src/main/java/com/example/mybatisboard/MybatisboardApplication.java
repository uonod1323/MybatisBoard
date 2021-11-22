package com.example.mybatisboard;

        import com.example.mybatisboard.controller.BoardController;
        import org.mybatis.spring.annotation.MapperScan;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.boot.SpringApplication;
        import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages="com.example.mybatisboard")
public class MybatisboardApplication {
    BoardController boardController;

    @Autowired
    public static void main(String[] args) {
        SpringApplication.run(MybatisboardApplication.class, args);
    }
}