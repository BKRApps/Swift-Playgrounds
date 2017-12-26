//: Playground - noun: a place where people can play

import UIKit


protocol Operations {
    associatedtype Item : Equatable
    mutating func push(element:Item)
    mutating func pop() -> Item?
}

struct Stack<Element:Equatable> : Operations{

    var elements = [Element]()

    typealias Item = Element
    mutating func push(element: Item) {
        elements.append(element)
    }

    mutating func pop() -> Item? {
        let last = elements.isEmpty ? nil : elements[elements.count - 1]
        elements.removeLast()
        return last
    }

}

extension Stack {
    func topElement() -> Element? {
        return elements.isEmpty ? nil : elements[elements.count - 1]
    }
}

struct Queue<Element:Equatable> : Operations {

   var elements = [Element] ()
   typealias Item = Element
   mutating func push(element:Item) {
        elements.append(element)
    }

    mutating func pop() -> Item? {
        let last = elements.isEmpty ? nil : elements[elements.count - 1]
        elements.removeLast()
        return last
    }
}

func compareStackQeue<T:Operations,U:Operations>(stack:T,queue:U) -> Bool where T.Item == U.Item {
    print("Hello world")
    return false
}


var stack = Stack<Int>()
stack.push(element: 10)
stack.push(element: 20)
stack.topElement()

var queue = Queue<String>()
queue.push(element: "kumar")
queue.push(element: "reddy")
compareStackQeue(stack: stack, queue: queue)

