//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let containerView: UIView = {
    return UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 425))
}()
containerView.backgroundColor = UIColor.clear

let subView: UIView = {
    return UIView(frame: CGRect(x: 0, y: 25, width: 400, height: 400))
}()
subView.backgroundColor = UIColor.white
containerView.addSubview(subView)
PlaygroundPage.current.liveView = containerView



let origin = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
origin.text = "Hyderabad"
origin.textColor = UIColor.red
subView.addSubview(origin)

let temp = UILabel(frame: CGRect(x: -50  - 100, y: 50, width: 100, height: 50))
temp.text = "Bangalore"
temp.textColor = UIColor.red

UIView.animate(withDuration: 1.0) {
    origin.frame = CGRect(x: -50 - 100, y: 50, width: 100, height: 50)
    origin.superview?.layoutIfNeeded()
}

subView.addSubview(temp)
origin.text = "Bangalore"
UIView.animate(withDuration: 1.0, delay: 1.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 20.0, options: .curveEaseOut, animations: {
    origin.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
    temp.superview?.layoutIfNeeded()
}, completion: { value in
        temp.removeFromSuperview()
        origin.text = "Bangalore"
    })




