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
    
    public var migrations: Migrations {
        CommandConfigs.migrations
    }
    
    public var migrator: Migrator {
        Migrator(
            databases: self.databases,
            migrations: self.migrations,
            logger: .init(label: "vtid-migrator"),
            on: self.databases.eventLoopGroup.any(),
            migrationLogLevel: .info
        )
    }
    
}
