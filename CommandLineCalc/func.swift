//
//  func.swift
//  Swiftme-FirstApp
//
//  Created by Sergey Ivanov on 18.11.2022.
//

import Foundation

func sumNumbers(numbers: [Int]) -> Int {
    let temp = numbers[0]
    return numbers[1...].reduce(temp, +)
}

func subNumbers(numbers: [Int]) -> Int {
    let temp = numbers[0]
    return numbers[1...].reduce(temp, -)
}

func multNumbers(numbers: [Int]) -> Int {
    let temp = numbers[0]
    return numbers[1...].reduce(temp, *)
}

func divNumbers(numbers: [Int]) -> Double {
    let tempArray = numbers.compactMap({Double($0)})
    let temp = tempArray[0]
    return tempArray[1...].reduce(temp, /)
}
