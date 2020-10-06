//
//  EventCountDisplay.swift
//  LifecycleSwiftUI
//
//  Created by Chris Clark on 2020/10/5.
//

import SwiftUI

struct EventCountDisplay: View {
    @EnvironmentObject private var eventCounter: EventCounter
    var body: some View {
        VStack {
            Group {
                Label("contentViewAppearances = \(eventCounter.contentViewAppearances)", systemImage: "sunrise.fill")
                Label("contentViewDisappearances = \(eventCounter.contentViewDisappearances)", systemImage: "sunset.fill")
                Divider()
            }
            Group {
                Label("sheetViewAppearances = \(eventCounter.sheetViewAppearances)", systemImage: "sunrise.fill")
                Label("sheetViewDisappearances = \(eventCounter.sheetViewDisappearances)", systemImage: "sunset.fill")
                Divider()
            }
            Group {
                Label("nextScreenAppearances = \(eventCounter.nextScreenAppearances)", systemImage: "sunrise.fill")
                Label("nextScreenDisappearances = \(eventCounter.nextScreenDisappearances)", systemImage: "sunset.fill")
                Divider()
            }
            Group {
                Label("willResignActiveNotification = \(eventCounter.willResignActiveNotification)", systemImage: "sunset")
                Label("didFinishLaunchingNotification = \(eventCounter.didFinishLaunchingNotification)", systemImage: "sunrise.fill")
                Label("didEnterBackgroundNotification = \(eventCounter.didEnterBackgroundNotification)", systemImage: "sunset.fill")
                Label("applicationWillEnterForeground = \(eventCounter.applicationWillEnterForeground)", systemImage: "sunrise")
                Label("didBecomeActiveNotification = \(eventCounter.didBecomeActiveNotification)", systemImage: "sunrise.fill")
                
                Label("willTerminateNotification = \(eventCounter.willTerminateNotification)", systemImage: "sunset")
            }
        }
    }
}

struct EventCountDisplay_Previews: PreviewProvider {
    static var previews: some View {
        EventCountDisplay()
    }
}
