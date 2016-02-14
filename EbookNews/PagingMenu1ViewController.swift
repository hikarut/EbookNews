//
//  PagingMenu1ViewController.swift
//  EbookNews
//
//  Created by HikaruTakahashi on 2016/01/30.
//  Copyright © 2016年 HikaruTakahashi. All rights reserved.
//

import UIKit
import Alamofire

class PagingMenu1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
