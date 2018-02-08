//: Playground - noun: a place where people can play

import UIKit

let mobileNumber = "0990812345"
let mobileRegEx = "^[1-9]{1}\\d{9}$"
let predicate = NSPredicate(format: "SELF Matches %@", mobileRegEx)
predicate.evaluate(with: mobileNumber)

let fontIcons = "\u{e93d}"
let symbol = "\u{2126}"

let example = "Hello World \u{1F436} 🐹 \u{e2}"

for index in example where index.unicodeScalars.contains("\u{e2}") {
    print("yes")
}

example.unicodeScalars.contains("\u{e2}")

example.utf8
example.utf16
example.unicodeScalars

var text = "Kumar"
let range1 = NSMakeRange(2, 0)
let range2 = Range(range1,in:text)

text.replaceSubrange(range2!, with: "1")

protocol BaseResponse {
    var statusCode: Int { get }
    var statusMessage: String { get set}
    var isSuccess1: Bool {get}
    var isSuccess2: Bool { get }
}

extension BaseResponse {
    var isSuccess2: Bool {
        return statusCode == 200 ? true : false
    }
}

struct Response: BaseResponse {
    let statusCode: Int
    var statusMessage: String
    var isSuccess1: Bool {
        get {
            return statusCode == 200 ? true : false
        }
    }
    
    init() {
        statusCode = 200
        statusMessage = "Completed successfully"
    }
}

var response = Response()
response.statusCode
response.statusMessage
response.statusMessage = "Sucess"
response.statusMessage
response.isSuccess2


struct TimerCard {
    let startTime: String
    let endTime: String
    
    init?(dict:[String:String]) {
        guard let sTime = dict["sTime"], let eTime = dict["eTime"] else {
            return nil
        }
        startTime = sTime
        endTime = eTime
    }
}

struct OfferCard : Equatable {
    let offerName: String
    let offerPeroid: String
    
    init?(dict:[String:String]) {
        guard let ofName = dict["ofName"], let ofPeriod = dict["ofPeriod"], ofPeriod.count > 0 else {
            return nil
        }
        offerName = ofName
        offerPeroid = ofPeriod
    }
    
    public static func == (lhs: OfferCard, rhs: OfferCard) -> Bool {
        if lhs.offerName == rhs.offerName {
            return true
        }
        return false
    }
}

// whenever there is an option for you to create a base class, then definately there is an option for enum.
enum CardTypes {
    case timerCardType(TimerCard)
    case offerCardType(OfferCard)
}

var cardTypesArray = [CardTypes]()

let timerDict = ["sTime":"Today","eTime":"Tomorrow"]
let offerDict = ["ofName":"25% cashback on All Visa Cards","ofPeriod":"Valid till Feb 28th"]

let timer = CardTypes.timerCardType(TimerCard(dict: timerDict)!)
cardTypesArray.append(timer)

let offer = CardTypes.offerCardType(OfferCard(dict: offerDict)!)
cardTypesArray.append(offer)

for cardType in cardTypesArray {
    switch cardType {
    case .timerCardType(let timerCard):
        print("\(timerCard.startTime) - \(timerCard.endTime)")
    case .offerCardType(let offerCard):
        print("\(offerCard.offerName) - \(offerCard.offerPeroid)")
    }
}

enum CartType: String {
    case cartMenuItems = "cart_menu_items"
    case renderingDetails = "rendering_details"
    case address = "addresses"
}

print(CartType.cartMenuItems.rawValue)

let cartTypeStringArray = ["cart_menu_items","rendering_details","addresses"]

cartTypeStringArray.forEach { (typeString) in
    switch typeString {
    case CartType.cartMenuItems.rawValue:
        print("Cart Menu item")
    default:
        break
    }
}



var groupShareLink = "http://swiggy.com/group?restId=655&slug=meghana-foods-4th-block-jayanagar&parentCartKey=4de16cd2-f938-4f8a-8ea9-9e833d0c1702&lat=12.932639&lng=77.602985000000004&uuid=ef71ac7d-715c-4379-9c21-4a85e39a03c1&groupCartHeader=Group+order+by+Kumar+Reddy&groupCartSubHeader=Start+contributing+to+the+cart&city=Bangalore&hostDisplayName=Kumar+Reddy"

let removeHttpScheme = groupShareLink.startIndex ..< groupShareLink.index(groupShareLink.startIndex, offsetBy: 7)
groupShareLink.replaceSubrange(removeHttpScheme, with: "")

let replaceWith = groupShareLink.index(groupShareLink.startIndex, offsetBy: 6) ..< groupShareLink.index(groupShareLink.startIndex, offsetBy: 10)
groupShareLink.replaceSubrange(replaceWith, with: ":/")


var validMobileNumber1 = "+91 91836 - 98571"
validMobileNumber1 = validMobileNumber1.components(separatedBy: .whitespaces).joined()
validMobileNumber1 = validMobileNumber1.replacingOccurrences(of: "-", with: "", options: String.CompareOptions.literal, range: validMobileNumber1.startIndex..<validMobileNumber1.endIndex)
let validMobileRegEx = "^[+]*(91|0)*([1-9]{1}[0-9]{9})$"


let regEx = try! NSRegularExpression(pattern: validMobileRegEx)
let validResults = regEx.matches(in: validMobileNumber1, range: NSMakeRange(0, validMobileNumber1.utf16.count))
validResults.count
if validResults.count > 0 {
    let testRange = validResults[0].range(at: 1)
    if testRange.location == NSNotFound {
        print("Yes")
    }
    let range11 = validResults[0].range(at:2)
    if range11.location == NSNotFound {
        print("Not found")
    }
    let swiftRange1 = Range(range11,in:validMobileNumber1)
    let range11String = validMobileNumber1[swiftRange1!.lowerBound ..< swiftRange1!.upperBound]
}


let regEx1 = "\\w"
let unicodeTest = "\u{e2}(990)8369857\u{e2}"

let x = unicodeTest.replacingOccurrences(of: "\u{e2}", with: "", options: String.CompareOptions.literal, range: unicodeTest.startIndex..<unicodeTest.endIndex)

let number = "(990) (9908-123456)()()()("
number.replacingOccurrences(of: "[(,),-]", with: "", options: String.CompareOptions.regularExpression, range: number.startIndex ..< number.endIndex)

let unicodeRegEx = try! NSRegularExpression(pattern: regEx1)
let validMatches = unicodeRegEx.matches(in:unicodeTest, range:NSMakeRange(0, unicodeTest.utf16.count))







