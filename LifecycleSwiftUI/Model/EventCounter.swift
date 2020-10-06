//
//  EventCounter.swift
//  LifecycleSwiftUI
//
//  Created by Chris Clark on 2020/10/5.
//

import Foundation

class EventCounter: ObservableObject, Equatable {
    static func == (lhs: EventCounter, rhs: EventCounter) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID()
    
    @Published var contentViewAppearances = 0
    @Published var contentViewDisappearances = 0
    
    @Published var sheetViewAppearances = 0
    @Published var sheetViewDisappearances = 0
    
    @Published var nextScreenAppearances = 0
    @Published var nextScreenDisappearances = 0
    
    @Published var willResignActiveNotification = 0
    @Published var didFinishLaunchingNotification = 0
    @Published var didEnterBackgroundNotification = 0
    @Published var applicationWillEnterForeground = 0
    @Published var willEnterForegroundNotification = 0
    @Published var didBecomeActiveNotification = 0
    @Published var willTerminateNotification = 0
}
