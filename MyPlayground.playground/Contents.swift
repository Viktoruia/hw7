import UIKit

//1. Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес -
//новый объект с координатами x, y, street name) и директор (у директора новые поля:
//experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).
//У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”
//. Ученик наследуется от Person.
//У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к
//некоторым из них.
//Написать метод для ученика, выводящий информацию о студенте в формате
//“Фамилия Имя (Класс)
//предмет: оценка
//предмет: оценка”.
//Написать метод для школы, который выводит информацию о школе.
//Уделите особое внимание выбору, что использовать: класс или структуру, var или let,
//модификаторы доступа.


class Person {
    var name: String
    var surname: String
    private var age: Int
    
    init(name: String, surname: String, age : Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

class Director: Person {
    var experience: Double
    var rating: Int
    
    init(experience: Double, rating: Int) {
        self.experience = experience
        self.rating = rating
        super.init(name: "Иван", surname: "Мышкин", age: 37)
    }
    func infoDirector() {
        print("Директор - \(name) \(surname). Опыт работы - \(experience). Среди учащихся, его рейтинг - \(rating)%")
    }
    
}

class Students: Person {
    var numberClass: Int
    let tuple = ("Математика", 8, "Русский язык", 9, "Музыка", 9, "Изо", 7)
    
    init(numberClass: Int) {
        self.numberClass = numberClass
        super.init(name: "Кирилл", surname: "Воробьев", age: 13)
    }
    
    func getInfo() {
        print("\(surname) \(name) (\(numberClass) класс) \n\(tuple.0): \(tuple.1) \n\(tuple.2): \(tuple.3) \n\(tuple.4): \(tuple.5) \n\(tuple.6): \(tuple.7)")
    }
    
}
let student = Students(numberClass: 6)

struct Address {
    let x: Double = 52.634800
    let y: Double = 29.709586
    var nameStreet = "Титова"
    
    func infoAddress() {
        print("Школа находится на улице \(nameStreet). Найти ее можно по координатам: \(x), \(y)")
    }
}

struct Shcool {
    let arrayStudents = ["Кирилл Воробьев", "Мария Иванова", "Алла Сидоренко"]
    var nameShcool = "Средняя школа № 10"
    let address = Address()
    let director = Director(experience: 15.6, rating: 78)
    let student = Students(numberClass: 6)
    
    func infoshcool() {
        print("\(nameShcool) \n\(address.infoAddress()) \n\(director.infoDirector())\n\(student.getInfo())")
    }
    
}
let shcool = Shcool()
shcool.infoshcool()
//print("\(shcool.nameShcool) \n\(shcool.address.infoAddress()) \n\(shcool.director.infoDirector())")


