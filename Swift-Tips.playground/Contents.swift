import UIKit
import Foundation

// Tip1: use nested types clearly represent the response classes

struct Group {
    var id: String
    var metaData:MetaData
    
    struct MetaData { 
        var metaId: String
        var metaName: String
        var status: Status
    }
    
    enum Status {
        case open
        case close
    }
}

extension Group {
    init(dict:[String:Any]) {
        self.id = dict["id"] as! String
        metaData = MetaData(dict: dict["metaData"] as! [String:Any] )
    }
}

extension Group.MetaData {
    init(dict:[String:Any]) {
        self.metaId = dict["metaId"] as! String
        self.metaName = dict["metaName"] as! String
        self.status = Group.Status.open
    }
}

let group = Group(dict: ["id":"100","metaData":["metaId":"1","metaName":"mName"]])


//Tip2: use Typealias to shorten the method signatures

typealias SucessHandler = (URLResponse,Data) -> Void
typealias FailureHandler = (Data,Error) -> Void

func httpRequest(sHandler:(URLResponse,Data) -> Void, fHandler:(Data,Error) -> ()) {
    sHandler(URLResponse(), Data())
}

func newHttpRequest(sHandler:SucessHandler, fHandler:FailureHandler) {
    sHandler(URLResponse(), Data())
}

// Tip3: use ' ' to use swift standard keywords

let `import`="Simple example to use Swift standard keywords"
print("hey this is \(`import`)")

enum Status {
    case `import`
    case `break`
    case none
}

extension Status {
    var getStatus:String {
        get {
            switch self {
            case .`break`:
                return "this is break"
            case .`import`:
                return "this is import"
            case .none:
                return "this is nothing"
            }
        }
    }
}

let status = Status.import
print(status.getStatus)


//Tip4: Self-executing closures is a great way to encapsulate lazy property initialization:

struct LazyStruct {
    lazy var collectionView: UICollectionView = {
        let view = UICollectionView(frame: CGRect.zero)
        return view
    }()
}

//Tip5: #function will give the prop name in getter and setters

UserDefaults.standard.set("kumar reddy123", forKey: "name")
UserDefaults.standard.string(forKey: "name")

extension UserDefaults {
    var address:String {
        get{
            return UserDefaults.standard.string(forKey: #function)!
        }
        set{
            UserDefaults.standard.set(newValue, forKey: #function)
        }
    }
}

UserDefaults.standard.address = "Bangalore"
UserDefaults.standard.address
