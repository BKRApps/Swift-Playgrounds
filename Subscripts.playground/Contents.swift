//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct EmployeeInfo{
    var employees : [String]

    subscript(index:Int) -> String {
        get{
            return employees[index]
        }
        set{
            employees[1]=newValue
        }
    }
}

var emp = EmployeeInfo(employees: [String]())
emp.employees.append("Kumar")
emp.employees.append("Hema")

print(emp[0])
emp[3]="Moksha"
emp
