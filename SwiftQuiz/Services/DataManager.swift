//
//  DataManager.swift
//  SwiftQuiz
//
//  Created by Vladimir Izmaylov on 15.09.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let questions = [
        Question(title: "Создание новой переменной/константы это?", answers: [
            Answer(title: "Объявление", isCorrect: true),
            Answer(title: "Модификация"),
            Answer(title: "Гибридизация"),
            Answer(title: "Полиморфизм")
        ]
        ),
        Question(title: "Значение этого именованного участка памяти можно установить 1 раз, без возможности изменить в дальнейшем", answers: [
            Answer(title: "Константа", isCorrect: true),
            Answer(title: "Переменная"),
            Answer(title: "Лямбда"),
            Answer(title: "Постоянная")
        ]
        ),
        Question(title: "Внутри каждого случая switch-case обязательно должно содержаться это:", answers: [
            Answer(title: "Условие", isCorrect: true),
            Answer(title: "Сравнение"),
            Answer(title: "Исполняемое выражение"),
            Answer(title: "print()")
        ]
        ),
        Question(title: "Как называется дополнительная ветка инструкции if?", answers: [
            Answer(title: "another"),
            Answer(title: "else", isCorrect: true),
            Answer(title: "repeat"),
            Answer(title: "also")
        ]
        ),
        Question(title: "Что будет, если попытаться изменить или обратиться к элементу по индексу, который за пределами границ массива?", answers: [
            Answer(title: "Вернется последний элемент"),
            Answer(title: "Ошибка исполнения", isCorrect: true),
            Answer(title: "Вернется nil"),
            Answer(title: "Вернется первый элемент")
        ]
        ),
        Question(title: "Какой метод нужно вызвать, чтоб вставить элемент по определенному индексу в массив?", answers: [
            Answer(title: "append"),
            Answer(title: "insert(_:at)", isCorrect: true),
            Answer(title: "add(_:at)"),
            Answer(title: "remove(_:at)")
        ]
        ),
        Question(title: "Какой тип коллекции использовать, чтоб ее значения не повторялись?", answers: [
            Answer(title: "Массив"),
            Answer(title: "Множество", isCorrect: true),
            Answer(title: "Словарь"),
            Answer(title: "Структуру")
        ]
        ),
        Question(title: "При наследовании имена суперкласса и подкласса разделяются этим знаком", answers: [
            Answer(title: "Точка с запятой (;)"),
            Answer(title: "Двоеточие (:)", isCorrect: true),
            Answer(title: "Троеточие (...)"),
            Answer(title: "Тире (-)")
        ]
        ),
        Question(title: "Все базовые типы в Swift реализованы как:", answers: [
            Answer(title: "Методы"),
            Answer(title: "Структуры", isCorrect: true),
            Answer(title: "Сабклассы"),
            Answer(title: "Классы")
        ]
        ),
        Question(title: "Какими ключевыми словами обозначаются структуры и классы в коде?", answers: [
            Answer(title: "classes и struct"),
            Answer(title: "class и struct", isCorrect: true),
            Answer(title: "class и structures"),
            Answer(title: "classes и structures")
        ]
        ),
        Question(title: "Какой класс имеет все необходимое для работы с табличным представлением?", answers: [
            Answer(title: "UIViewController"),
            Answer(title: "UITableViewController", isCorrect: true),
            Answer(title: "UINavigationController"),
            Answer(title: "UIView")
        ]
        ),
        Question(title: "От какого класса наследуется UITableView", answers: [
            Answer(title: "UITextView"),
            Answer(title: "UIScrollView", isCorrect: true),
            Answer(title: "UIButton"),
            Answer(title: "UITableViewCell")
        ]
        ),
        Question(title: "Какой будет результат выражения 9 % 5", answers: [
            Answer(title: "1,8"),
            Answer(title: "4", isCorrect: true),
            Answer(title: "3"),
            Answer(title: "6")
        ]
        ),
        Question(title: "Оператор этого диапазона задает диапазон от a до b. Исключая значение b", answers: [
            Answer(title: "Полузамкнутого"),
            Answer(title: "Полуоткрытого", isCorrect: true),
            Answer(title: "Открытого"),
            Answer(title: "Полноценного")
        ]
        ),
        Question(title: "Какой префиксный логический оператор инвертирует булево значение?", answers: [
            Answer(title: "||"),
            Answer(title: "!", isCorrect: true),
            Answer(title: "!="),
            Answer(title: "&&")
        ]
        ),
    ]
}
