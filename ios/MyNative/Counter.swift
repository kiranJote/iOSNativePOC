import UIKit

@objc(Counter)
class Counter: NSObject {
    
    @objc
    func increment(_ callback:RCTResponseSenderBlock) {
        DispatchQueue.main.async {
            let vc = SecondViewController()
            let nav = UIApplication.shared.keyWindow?.rootViewController?.navigationController
            nav?.pushViewController(vc, animated: true)
        }
        callback(["Done"])
    }
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
