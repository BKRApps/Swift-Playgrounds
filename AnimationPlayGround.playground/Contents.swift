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

let numberLabel = UILabel(frame: CGRect(x: 150, y: 150, width: 120, height: 25))
numberLabel.text = "Kumar Reddy"
numberLabel.textColor = UIColor.black
containerView.addSubview(numberLabel)

// scale transform
/*UIView.animate(withDuration: 1.0, animations: {
    let scale = CGAffineTransform(scaleX: 3.0, y: 3.0)
    numberLabel.transform = scale
})*/

// translation transform
/*UIView.animate(withDuration: 1.0, animations: {
    let translation = CGAffineTransform(translationX: 50.0, y: 50.0)
    numberLabel.transform = translation
})*/

//translation & scale
//UIView.animate(withDuration: 1.0, animations: {
//    let translation = CGAffineTransform(translationX: 50.0, y: 50.0)
//    let scale = CGAffineTransform(scaleX: 3.0, y: 3.0)
//    let transform = translation.concatenating(scale)
//    numberLabel.transform = transform
//})


//UIView.animate(withDuration: 1.0, animations: {
//    let translation = CGAffineTransform(translationX: 75.0, y: 75.0)
//    let scale = CGAffineTransform(scaleX: 5.0, y: 5.0)
//    let transform = scale.concatenating(translation)
//    numberLabel.transform = transform
//})

UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat,.autoreverse], animations: {
    let rotation = CGAffineTransform(rotationAngle: (CGFloat.pi)/1)
    let scale = CGAffineTransform(scaleX: 3.0, y: 3.0)
    let transform = rotation.concatenating(scale)
    numberLabel.transform = transform
    let font = numberLabel.font
    numberLabel.font = UIFont(name: (font?.fontName)!, size: 17.0)
}, completion: nil)

/*
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
 */




