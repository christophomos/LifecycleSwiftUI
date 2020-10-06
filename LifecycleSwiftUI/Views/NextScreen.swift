//
//  NextScreen.swift
//  LifecycleSwiftUI
//
//  Created by Chris Clark on 2020/10/5.
//

import SwiftUI

struct NextScreen: View {
    @EnvironmentObject private var eventCounter: EventCounter
    var body: some View {
        VStack {
            Text("Next screen")
                .font(.title)
                .padding()
                .foregroundColor(Color.white)
                .background(Color("Fuchsia"))
            EventCountDisplay()
                .onAppear {
                    eventCounter.nextScreenAppearances += 1
                }
                .onDisappear {
                    eventCounter.nextScreenDisappearances += 1
            }
        }
        .padding()
        .background(Color("Teal"))
    }
}

struct NextScreen_Previews: PreviewProvider {
    static var previews: some View {
        NextScreen()
    }
}
