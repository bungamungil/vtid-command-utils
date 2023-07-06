//
//  CommandConfig.swift
//  
//
//  Created by Bunga Mungil on 05/07/23.
//

import FluentKit
import NIOCore
import NIOPosix
import VTIDCore


public struct CommandConfig {
    
    public var databases: Databases
    
    public var db: Database
    
    init() {
        self.databases = Databases(
            threadPool: NIOThreadPool(
                numberOfThreads: System.coreCount
            ),
            on: MultiThreadedEventLoopGroup(
                numberOfThreads: System.coreCount
            )
        )
        self.databases.use(
            VTIDCore.DatabaseConfig,
            as: VTIDCore.DatabaseID
        )
        self.db = self.databases.database(
            logger: .init(label: "vtid-db"),
            on: self.databases.eventLoopGroup.any()
        )!
    }
    
}


public let CommandConfigs = CommandConfig()
