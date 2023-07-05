//
//  CommandConfig.swift
//  
//
//  Created by Bunga Mungil on 05/07/23.
//

import FluentKit
import NIOCore
import NIOPosix


public struct CommandConfig {
    
    public var databases: Databases = Databases(
        threadPool: NIOThreadPool(
            numberOfThreads: System.coreCount
        ),
        on: MultiThreadedEventLoopGroup(
            numberOfThreads: System.coreCount
        )
    )
    
    public var migrations: Migrations = Migrations()
    
}


public let CommandConfigs = CommandConfig()
