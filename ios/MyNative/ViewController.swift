//
//  ViewController.swift
//  MyNative
//
//  Created by Kiran jote on 09/06/22.
//

import UIKit
import React


@objc(ViewController)
class ViewController: UIViewController {
    @IBOutlet weak var nativeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    func setupUI() {
        nativeButton.addTarget(self, action: #selector(nativeButtonTapped), for: .touchUpInside)
    }
    
    @objc
    func increment(_ callback:RCTResponseSenderBlock) {
        DispatchQueue.main.async {
//          let top = UIApplication.shared.windows.first { $0.isKeyWindow }?.rootViewController as? UINavigationController
            let top = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController
            top?.popViewController(animated: true)
        }
        callback(["Done"])
    }
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    @objc
    func nativeButtonTapped() {
        let vc = SecondViewController()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func highScoreButtonTapped(sender : UIButton) {
        NSLog("Hello")
//        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
//        let mockData:NSDictionary = ["scores":
//                                        [
//                                            ["name":"Alex", "value":"42"],
//                                            ["name":"Joel", "value":"10"]
//                                        ]
//        ]
        //        let rootView = RCTRootView(
        //            bundleURL: jsCodeLocation!,
        //            moduleName: "App",
        //            initialProperties: mockData as [NSObject : AnyObject],
        //            launchOptions: nil
        //        )

        let rootView = RCTRootView(bridge: (UIApplication.shared.delegate as! AppDelegate).bridge!,
                                   moduleName: "App",
                                   initialProperties: nil)
        let vc = ThirdViewController()
        vc.view = rootView
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension UIApplication {
    
    var keyWindow: UIWindow? {
        // Get connected scenes
        return UIApplication.shared.connectedScenes
            // Keep only active scenes, onscreen and visible to the user
            .filter { $0.activationState == .foregroundActive }
            // Keep only the first `UIWindowScene`
            .first(where: { $0 is UIWindowScene })
            // Get its associated windows
            .flatMap({ $0 as? UIWindowScene })?.windows
            // Finally, keep only the key window
            .first(where: \.isKeyWindow)
    }
    
}

