//
//  Realm.swift
//  Venga
//
//  Created by David Richards on 4/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import CoreData


open class Realm: NSObject {
    
    
    private let defaults = UserDefaults.standard
    
    open func clearData() {
        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
    }
    
    open func setLoginType (_ type: String) {
        defaults.set(type, forKey: "loginType")
    }
}
