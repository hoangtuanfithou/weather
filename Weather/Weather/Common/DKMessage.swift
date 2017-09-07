//
//  DKMessage.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import SVProgressHUD

extension NSObject {
    
    enum ToastType {
        case info, success, error
    }
    
    class func showToast(_ message: String? = "", type: ToastType = .info) {
        switch type {
        case .info:
            SVProgressHUD.showInfo(withStatus: message)
        case .success:
            SVProgressHUD.showSuccess(withStatus: message)
        case .error:
            SVProgressHUD.showError(withStatus: message)
        }
    }
    
}
