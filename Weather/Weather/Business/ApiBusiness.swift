//
//  ApiBusiness.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class ApiBusiness: NSObject {

    class func post<T>(request: BaseRequest, responseClass: T.Type, showLoadingHud: Bool = true, showMessage: Bool = true, callBack: @escaping (Bool, T?) -> Void) -> Request? where T: BaseModel {
        return Alamofire.request(request.url, method: .post, parameters: request.toJSON()).responseObject { (response: DataResponse<T>) in
            processResponse(response, showMessage: showMessage, callBack: callBack)
        }
    }

    class func get<T>(request: BaseRequest, responseClass: T.Type, showLoadingHud: Bool = true, showMessage: Bool = true, callBack: @escaping (Bool, T?) -> Void) -> Request? where T: BaseModel {
        return Alamofire.request(request.url, method: .get, parameters: request.toJSON()).responseObject { (response: DataResponse<T>) in
            processResponse(response, showMessage: showMessage, callBack: callBack)
        }
    }

    private class func processResponse<T>(_ response: DataResponse<T>, showMessage: Bool = true, callBack: @escaping (Bool, T?) -> Void) where T: BaseModel {
        if response.result.isSuccess && response.response?.statusCode == 200 {
            callBack(true, response.result.value)
        } else {
            if response.result.error?._code == NSURLErrorNotConnectedToInternet && showMessage {
                self.showToast(LocalizedString("NO_NETWORK"), type: .error)
            }
            callBack(false, nil)
        }
    }
    
}
