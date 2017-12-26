//: Playground - noun: a place where people can play

import UIKit

var array1 = [2,3,4,5]
var array2 = [2,3,4,5,6]

array1.append(6)

if array1 == array2 {
    print("arrays are equal")
}


struct Employee : Equatable, Hashable, Comparable {
    var name,band : String
    var salary : Float

    var hashValue: Int {
        get {
            return name.hashValue ^ band.hashValue ^ Int(salary) &* 16777619
        }
    }

    static func == (lhs:Employee,rhs:Employee) -> Bool {
        return lhs.band == rhs.band && lhs.salary == rhs.salary
    }

    static func < (lhs:Employee, rhs:Employee) -> Bool {
        if lhs.band != rhs.band {
            return lhs.band < rhs.band
        }else{
            return lhs.salary < rhs.salary
        }
    }
}


var emp1 = Employee(name: "Kumar Reddy", band: "M2", salary: 10000)
var emp2 = Employee(name: "Kumar", band: "M2", salary: 10001)

if emp1 == emp2 {
    print("Employee are equal")
}else{
    print("Employee are not equal")
}

emp1 < emp2
emp1 > emp2


