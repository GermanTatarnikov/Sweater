package com.example.sweater.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Пожалуйста, заполните текст сообщения")
    @Length(max = 2048, message = "Сообщение слишком длинное")
    private String text;

    @Length(max = 255, message = "Тэг слишком длинный")
    private String tag;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String fileName;

    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }
}
