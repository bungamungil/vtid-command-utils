//
//  CommandContext+Fluent.swift
//  
//
//  Created by Bunga Mungil on 05/07/23.
//

import ConsoleKit
import FluentKit


extension CommandContext {
    
    public var databases: Databases {
        CommandConfigs.databases
    }
    
    public var db: Database {
        CommandConfigs.db
    }
    
}
