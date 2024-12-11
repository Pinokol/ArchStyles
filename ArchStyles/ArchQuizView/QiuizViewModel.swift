//
//  QiuizViewModel.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 09.12.2024.
//

import Observation
import Foundation

@Observable final class QiuizViewModel {
    
    var mode: ArchQuizMode = .start
    // список ответов
    var answers: [Int: Int] = [:]
    
    // список вопросов
    let questions: [QuizItem] = [
        QuizItem(
            id: 0,
            question: "Что позволяет сохранить Фасадизм?",
            rightAnswerID: 0,
            answerOptions:
                [AnswerOption(id: 0, answer: "Облик исторической застройки"),
                 AnswerOption(id: 1, answer: "Природную флору и фауну"),
                 AnswerOption(id: 2, answer: "Городские парковые зоны"),
                 AnswerOption(id: 3, answer: "Тяжелую промышленность региона")
                ]
        ),
        QuizItem(
            id: 1,
            question: "Выберите удачный пример Современного архитектурного стиля СПб?",
            rightAnswerID: 2,
            answerOptions:
                [AnswerOption(id: 0, answer: "Вторая сцена Мариинского театра"),
                 AnswerOption(id: 1, answer: "Бизнес-центр «Биржа» на Васильевском острове"),
                 AnswerOption(id: 2, answer: "Реконструкция Главного штаба"),
                 AnswerOption(id: 3, answer: "ЖК «Дом на Шпалерной улице»")
                ]
        ),
        QuizItem(
            id: 2,
            question: "Что в Соцмодернизме строили чаще?",
            rightAnswerID: 3,
            answerOptions:
                [AnswerOption(id: 0, answer: "Корпоративные штаб-квартиры"),
                 AnswerOption(id: 1, answer: "Частные односемейные дома"),
                 AnswerOption(id: 2, answer: "Храмы, церкви"),
                 AnswerOption(id: 3, answer: "Административные учреждения, спортивные стадионы, промышленные предприятия и жилые дома")
                ]
        ),
        QuizItem(
            id: 3,
            question: "За счёт какого строительства после смерти Сталина пришёлся максимально быстрый рост города и населения?",
            rightAnswerID: 1,
            answerOptions:
                [AnswerOption(id: 0, answer: "Индивидуальные жилые дома, таунхаусы"),
                 AnswerOption(id: 1, answer: "Плановая застроика"),
                 AnswerOption(id: 2, answer: "Религиозные здания"),
                 AnswerOption(id: 3, answer: "Промышленные объекты")
                ]
        ),
        QuizItem(
            id: 4,
            question: "Из-за чего неудалось осуществить амбициозные проекты Сталинского Неоклассицизма?",
            rightAnswerID: 0,
            answerOptions:
                [AnswerOption(id: 0, answer: "Великая отечественная война"),
                 AnswerOption(id: 1, answer: "Столицу пенесли в Москву"),
                 AnswerOption(id: 2, answer: "Конкурс был закрыт от иностранцев"),
                 AnswerOption(id: 3, answer: "Нехватка строительных материалов")
                ]
        ),
        QuizItem(
            id: 5,
            question: "Как называют Конструктивизм в Петербурге?",
            rightAnswerID: 1,
            answerOptions:
                [AnswerOption(id: 0, answer: "Промышленная сборка материалов"),
                 AnswerOption(id: 1, answer: "Ленинградский авангард"),
                 AnswerOption(id: 2, answer: "Февральский функционализм"),
                 AnswerOption(id: 3, answer: "Октябрьское градостроительство")
                ]
        ),
        QuizItem(
            id: 6,
            question: "Самые яркие петербургские примеры Модерна?",
            rightAnswerID: 2,
            answerOptions:
                [AnswerOption(id: 0, answer: "Московский вокзал"),
                 AnswerOption(id: 1, answer: "СКК Петербург"),
                 AnswerOption(id: 2, answer: "Дом Зингера и Елисеевский магазин"),
                 AnswerOption(id: 3, answer: "Особняк стоматологов и Усадьба Крузеля")
                ]
        ),
        QuizItem(
            id: 7,
            question: "Неофициальный термин Промышленного стиля?",
            rightAnswerID: 0,
            answerOptions:
                [AnswerOption(id: 0, answer: "Кирпичный"),
                 AnswerOption(id: 1, answer: "Северный"),
                 AnswerOption(id: 2, answer: "Заводской"),
                 AnswerOption(id: 3, answer: "Фабричный")
                ]
        ),
        QuizItem(
            id: 8,
            question: "Что стало важным отражением периода архитектурной эклектики?",
            rightAnswerID: 2,
            answerOptions:
                [AnswerOption(id: 0, answer: "Средневековая готика"),
                 AnswerOption(id: 1, answer: "Романский стиль"),
                 AnswerOption(id: 2, answer: "Неоготика"),
                 AnswerOption(id: 3, answer: "Полуциркульные арки и своды")
                ]
        ),
        QuizItem(
            id: 9,
            question: "Укажите пример Неорусского стиля?",
            rightAnswerID: 2,
            answerOptions:
                [AnswerOption(id: 0, answer: "Витебский вокзал"),
                 AnswerOption(id: 1, answer: "Новая сцена Александринского театра"),
                 AnswerOption(id: 2, answer: "Спас-на-Крови"),
                 AnswerOption(id: 3, answer: "Табачная фабрика «Лаферм»")
                ]
        ),
        QuizItem(
            id: 10,
            question: "К какому стилю относится Морской собор Николая Чудотворца в Кронштадте?",
            rightAnswerID: 3,
            answerOptions:
                [AnswerOption(id: 0, answer: "Русский ампир"),
                 AnswerOption(id: 1, answer: "Модерн"),
                 AnswerOption(id: 2, answer: "Фасадизм"),
                 AnswerOption(id: 3, answer: "Неовизантийский")
                ]
        ),
        QuizItem(
            id: 11,
            question: "Главные проекты архитектора Штакеншнейдера в стиле Необарокко?",
            rightAnswerID: 0,
            answerOptions:
                [AnswerOption(id: 0, answer: "Дворец Белосельских-Белозерских на Невском проспекте"),
                 AnswerOption(id: 1, answer: "Церковь Святого Михаила на Васильевском острове"),
                 AnswerOption(id: 2, answer: "Храм Успения Пресвятой Богородицы"),
                 AnswerOption(id: 3, answer: "Дом Басевича на Большой Пушкарской улице")
                ]
        ),
        QuizItem(
            id: 12,
            question: "Русский ампир продолжил развитие?",
            rightAnswerID: 2,
            answerOptions:
                [AnswerOption(id: 0, answer: "Неоготики"),
                 AnswerOption(id: 1, answer: "Модерна"),
                 AnswerOption(id: 2, answer: "Классицизма"),
                 AnswerOption(id: 3, answer: "Барокко")
                ]
        ),
        QuizItem(
            id: 13,
            question: "Большая часть известных достопримечательностей города относятся именно к этому стилю?",
            rightAnswerID: 0,
            answerOptions:
                [AnswerOption(id: 0, answer: "Классицизм"),
                 AnswerOption(id: 1, answer: "Промышленный"),
                 AnswerOption(id: 2, answer: "Модерн"),
                 AnswerOption(id: 3, answer: "Конструктивизм")
                ]
        ),
        QuizItem(
            id: 14,
            question: "Укажите яркий пример архитектурного стиля Барокко?",
            rightAnswerID: 1,
            answerOptions:
                [AnswerOption(id: 0, answer: "Храм Петра и Павла в Парголовском парке"),
                 AnswerOption(id: 1, answer: "Зимний дворец"),
                 AnswerOption(id: 2, answer: "Елисеевский магазин на Невском проспекте"),
                 AnswerOption(id: 3, answer: "Особняк Матильды Кшесинской")
                ]
        ),
    ]
    
    
}
// режим опроса "старт или в процессе"
enum ArchQuizMode {
    case start
    case inProgress
}
// модель вопроса
struct QuizItem: Identifiable {
    let id: Int
    let question: String
    let rightAnswerID: Int
    let answerOptions: [AnswerOption]
}
// модель ответа
struct AnswerOption: Identifiable {
    let id: Int
    let answer: String
}
