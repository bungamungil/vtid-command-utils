//
//  CommandConfig.swift
//  
//
//  Created by Bunga Mungil on 05/07/23.
//

import FluentKit
import NIOCore
import NIOPosix


struct CommandConfig {
    
    var databases: Databases = Databases(
        threadPool: NIOThreadPool(
            numberOfThreads: System.coreCount
        ),
        on: MultiThreadedEventLoopGroup(
            numberOfThreads: System.coreCount
        )
    )
    
    var migrations: Migrations = Migrations()
    
}


let CommandConfigs = CommandConfig()
