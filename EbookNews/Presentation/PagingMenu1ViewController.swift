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
        
        let rakutenBook = RakutenBookAPI()
        rakutenBook.requestBook()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
