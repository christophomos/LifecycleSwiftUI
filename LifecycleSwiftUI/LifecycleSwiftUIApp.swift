//
//  LifecycleSwiftUIApp.swift
//  LifecycleSwiftUI
//
//  Created by Chris Clark on 2020/10/5.
//

import SwiftUI

@main
struct LifecycleSwiftUIApp: App {
    var eventCounter = EventCounter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(eventCounter)
        }
    }
}
