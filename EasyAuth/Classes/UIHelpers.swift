//
//  UIHelpers.swift
//  Pods
//
//  Created by Code95 on 10/22/18.
//

import Foundation
import UIKit
import Alamofire


public typealias loginCompletionHandler = (_ response:DataResponse<Any>?) -> Void

public func login(url:String,method:HTTPMethod,parameters:[String:Any]?,encoding:ParameterEncoding,headers:[String:String]?,completion:@escaping loginCompletionHandler){
    Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers).responseJSON { (response) in
        completion(response)
        debugPrint(response)
    }
}
