//
//  ViewController.swift
//  howldynamiclinks
//
//  Created by 유명식 on 2017. 7. 20..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let components = DynamicLinkComponents(link: URL(string: "https://www.naver.com")!, domain: "r37xk.app.goo.gl")
        let IOSParams = DynamicLinkIOSParameters(bundleID: "com.swift.howldynamiclinks")
        IOSParams.appStoreID = "544007664"
        
        components.iOSParameters = IOSParams
        print(components.url?.absoluteURL)
        
        let options = DynamicLinkComponentsOptions()
        options.pathLength = .short
        components.options = options
        
        components.shorten { (url, warning, err) in
            print(url)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

