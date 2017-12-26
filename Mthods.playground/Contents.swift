//: Playground - noun: a place where people can play

import UIKit

// swift mutate

struct Employee {

    var name : String
    var id : String
    static var compabyAddress : String = " "

    mutating func change(to name:String){
        self.name = name
    }

    static func staticFunction(){
        Employee.compabyAddress = "Yo"
        self.compabyAddress = "yoyo"
        compabyAddress = "youyoyo"
    }
}

enum Error {
    case NetworkError
    case Timeout
    case NetworkSSLError

    mutating func getError12(){
        switch self {
        case .NetworkError:
            self = Error.NetworkSSLError
        default:
            self = Error.Timeout
        }
    }
}

var error = Error.NetworkError
error.getError12()

var emp = Employee(name: "Kumar Reddy", id: "300006814")
emp.change(to: "Kumar Reddy Birapuram")




