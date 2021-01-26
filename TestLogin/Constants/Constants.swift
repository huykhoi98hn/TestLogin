//
//  Constants.swift
//  TestLogin
//
//  Created by NHK on 1/26/21.
//  Copyright © 2021 NHK. All rights reserved.
//

import Foundation

struct AppURL {
    private struct Domains {
        static let Dev = "http://imaginato.mocklab.io/"
    }
    
    private  struct Routes {
        static let Api = ""
    }
    
    private  static let Domain = Domains.Dev
    private  static let Route = Routes.Api
    private  static let BaseURL = Domain + Route
    
    static var login: String {
        return BaseURL  + "login"
    }
}
