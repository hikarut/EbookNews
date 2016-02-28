//
//  RakutenBookAPI.swift
//  EbookNews
//
//  Created by HikaruTakahashi on 2016/02/27.
//  Copyright © 2016年 HikaruTakahashi. All rights reserved.
//

import Foundation
import Alamofire

class RakutenBookAPI {
    
    func requestBook() -> String {
        /*
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
*/
        Alamofire.request(.GET, "https://app.rakuten.co.jp/services/api/Kobo/EbookSearch/20140811",
                           parameters:["applicationId": "1031047732747093138",
                                       "koboGenreId": "101",
                                       "hits": 5])
            .responseJSON { response in
                print("---request--")
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                print(response)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
        
        return "json";
    }
    
}