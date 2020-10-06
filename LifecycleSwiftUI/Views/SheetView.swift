//
//  SheetView.swift
//  LifecycleSwiftUI
//
//  Created by Chris Clark on 2020/10/5.
//

import SwiftUI

struct SheetView: View {
    @EnvironmentObject private var eventCounter: EventCounter
    
    var body: some View {
        VStack {
            Text("Sheet View")
                .font(.title)
                .padding()
                .foregroundColor(Color.white)
                .background(Color("Fuchsia"))
            EventCountDisplay()
        }
        .padding()
        .background(Color("Teal"))
        .onAppear {
            eventCounter.sheetViewAppearances += 1
        }
        .onDisappear {
            eventCounter.sheetViewDisappearances += 1
        }
        .onChange(of: eventCounter) { _ in
            print(eventCounter)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
