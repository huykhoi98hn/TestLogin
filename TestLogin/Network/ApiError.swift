//
//  ApiError.swift
//  UnitelSDK
//
//  Created by admin on 1/18/21.
//

import Foundation

protocol ErrorType: Error {
    var errorCode: Int { get set }
    var message: String { get set }
}

struct ApiError: ErrorType {
    var errorCode: Int
    var message: String
}

public enum ApiErrorCode: Int {
    case code100 = 100
    
    
    
}
