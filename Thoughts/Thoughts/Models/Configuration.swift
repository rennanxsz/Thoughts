//
//  Configuration.swift
//  Thoughts
//
//  Created by Rennan Bruno on 30/01/22.
//

import Foundation

enum UserDefaultKeys: String {
    case timeInterval = "timeInterval"
    case colorScheme = "colorScheme"
    case autoRefresh = "autorefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get {
            return defaults.double(forKey: UserDefaultKeys.timeInterval.rawValue)
        }
        
        set {
            defaults.set(newValue, forKey: UserDefaultKeys.timeInterval.rawValue)
        }
    }
    
    var colorScheme: Int {
        get{
            return defaults.integer(forKey: UserDefaultKeys.colorScheme.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultKeys.colorScheme.rawValue)
        }
    }
    
    var autorefresh: Bool {
        get{
            return defaults.bool(forKey: UserDefaultKeys.autoRefresh.rawValue)
        }
        set {
            defaults.set(newValue, forKey: UserDefaultKeys.autoRefresh.rawValue)
        }
    }
    
    private init () {
        if defaults.double(forKey: UserDefaultKeys.timeInterval.rawValue)
            == 0 {
            defaults.set(8.0, forKey: UserDefaultKeys.timeInterval.rawValue)
        }
    }
}
