//
//  SQOAuth.swift
//  Copyright © 2015-2016 Sequencing.com. All rights reserved
//

import Foundation

class SQOAuth : NSObject {
    
    static let instance = SQOAuth()   //designated initializer
    
    // MARK: Functions
    func registrateApplicationParametersClientID(client_id: String, ClientSecret client_secret: String, RedirectUri redirect_uri: String, Scope scope: String) -> Void {
        SQServerManager.instance.registrateParametersClientID(client_id, ClientSecret: client_secret, RedirectUri: redirect_uri, Scope: scope)
    }
    
    
    func authorizeUserWithResult(result: (authResult: SQAuthResult) -> Void) -> Void {
        SQServerManager.instance.authorizeUser { (authResult) -> Void in
            result(authResult: authResult)
        }
    }
    
    
    func authorizeUserWithTokenResult(result: (token: SQToken?) -> Void) -> Void {
        self.authorizeUserWithResult { (authResult) -> Void in
            if authResult.isAuthorized {
                result(token: authResult.token)
            } else {
                result(token: nil)
            }
        }
    }
    
    
}
