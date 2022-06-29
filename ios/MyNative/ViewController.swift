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
        //nativeButton.addTarget(self, action: #selector(nativeButtonTapped), for: .touchUpInside)
    }
    
//    @objc
//    func increment(_ callback:RCTResponseSenderBlock) {
//        DispatchQueue.main.async {
//            let vc = ThirdViewController()
//            let top = UIApplication.shared.windows.first { $0.isKeyWindow }?.rootViewController as? UINavigationController
//            top?.pushViewController(vc, animated: true)
//        }
//        callback(["Done"])
//    }
    
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
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
                                        [
                                            ["name":"Alex", "value":"42"],
                                            ["name":"Joel", "value":"10"]
                                        ]
        ]
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

