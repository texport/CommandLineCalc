//
//  main.swift
//  Swiftme-FirstApp
//
//  Created by Sergey Ivanov on 18.11.2022.
//
/*
 Task1
 Доработайте программу «Сумма чисел» так, чтобы она производила проверку значений запрашиваемых параметров на соответствие числовому типу данных. Программа должна просить
 ввести корректное значение до тех пор, пока оно не будет введено. И так для каждого из аргументов.
 Task2
 Доработайте программу таким образом, чтобы она позволяла выбирать, какую из арифметических операций выполнить (/, *, +, -, степень)
 Task3
 Доработайте программу таким образом, чтобы появлялся запрос количества аргументов (будьте внимательны, что для возведения в степень количество аргументов фиксировано)
 */
import Foundation

var numbersArray: [Int] = []

while true {
    print("----------------------------------------------------")
    print("Что вы хотите сделать с числами? (*, +, -, /, power)")
    print("----------------------------------------------------")
    let text = readLine()
    
    switch text {
    case "+":
        print("----------------------------------------------------")
        print("Вводите числа которые хотите скалдывать между собой по одному, после каждого числа нажимайте 'enter'")
        print("Если вы хотите закончить и узнать результат введите '=' и нажмите 'enter'")
        print("Если вы хотите венрнуться назад введите 'back' и нажмите 'enter'")
        print("----------------------------------------------------")
        while true {
            let temp = readLine()
            if checkNumber(string: temp) {
                numbersArray.append(Int(temp!)!)
            } else if temp! == "=" && numbersArray.count != 0 {
                print(sumNumbers(numbers: numbersArray))
                numbersArray.removeAll()
                break
            } else if temp! == "back" {
                numbersArray.removeAll()
                break
            } else {
                print("----------------------------------------------------")
                print("Вы вводите что то не то, вводите только числа")
                print("----------------------------------------------------")
            }
        }
    case "-":
        print("----------------------------------------------------")
        print("Вводите числа которые хотите отнимать друг от друга, после каждого числа нажимайте 'enter'")
        print("Если вы хотите закончить и узнать результат введите '=' и нажмите 'enter'")
        print("Если вы хотите венрнуться назад введите 'back' и нажмите 'enter'")
        print("----------------------------------------------------")
        while true {
            let temp = readLine()
            if checkNumber(string: temp) {
                numbersArray.append(Int(temp!)!)
            } else if temp! == "=" && numbersArray.count != 0 {
                print(subNumbers(numbers: numbersArray))
                numbersArray.removeAll()
                break
            } else if temp! == "back" {
                numbersArray.removeAll()
                break
            } else {
                print("----------------------------------------------------")
                print("Вы вводите что то не то, вводите только числа")
                print("----------------------------------------------------")
            }
        }
    case "*":
        print("----------------------------------------------------")
        print("Вводите числа которые хотите перемножить, после каждого числа нажимайте 'enter'")
        print("Если вы хотите закончить и узнать результат введите '=' и нажмите 'enter'")
        print("Если вы хотите венрнуться назад введите 'back' и нажмите 'enter'")
        print("----------------------------------------------------")
        while true {
            let temp = readLine()
            if checkNumber(string: temp) {
                numbersArray.append(Int(temp!)!)
            } else if temp! == "=" && numbersArray.count != 0 {
                print(multNumbers(numbers: numbersArray))
                numbersArray.removeAll()
                break
            } else if temp! == "back" {
                numbersArray.removeAll()
                break
            } else {
                print("----------------------------------------------------")
                print("Вы вводите что то не то, вводите только числа")
                print("----------------------------------------------------")
            }
        }
    case "/":
        print("----------------------------------------------------")
        print("Вводите числа которые поделить друг на друга, после каждого числа нажимайте 'enter'")
        print("Если вы хотите закончить и узнать результат введите '=' и нажмите 'enter'")
        print("Если вы хотите венрнуться назад введите 'back' и нажмите 'enter'")
        print("----------------------------------------------------")
        while true {
            let temp = readLine()
            if checkNumber(string: temp) {
                numbersArray.append(Int(temp!)!)
            } else if temp! == "=" && numbersArray.count != 0 {
                print(divNumbers(numbers: numbersArray))
                numbersArray.removeAll()
                break
            } else if temp! == "back" {
                numbersArray.removeAll()
                break
            } else {
                print("----------------------------------------------------")
                print("Вы вводите что то не то, вводите только числа")
                print("----------------------------------------------------")
            }
        }
    default:
        print("----------------------------------------------------")
        print("Вы неправильно выбрали действие, попробуйте еще")
        print("----------------------------------------------------")
        break
    }
}

func checkNumber(string: String?) -> Bool {
    if Int(string!) != nil {
        return true
    }
    return false
}
