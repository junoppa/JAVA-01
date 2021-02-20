package com;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * TODO
 *
 * @author junoppa
 * @date 2021/2/18
 */

@Configuration
@ConditionalOnProperty("user.name")
@EnableConfigurationProperties(Course.class)
public class StudentConfig {

    @Bean
    @ConditionalOnProperty(prefix = "user.config", value = "enabled", havingValue = "true")
    public Student student(Course course) {
        Student student = new Student();
        student.setId("XXXXX");
        student.setName("Charlie");
        student.setCourse(course);
        return student;
    }
}
