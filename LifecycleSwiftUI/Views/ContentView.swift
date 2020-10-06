//
//  ContentView.swift
//  LifecycleSwiftUI
//
//  Created by Chris Clark on 2020/10/5.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var eventCounter: EventCounter
    @State private var showSheet = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Content View")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color("Fuchsia"))
                HStack {
                    NavigationLink(destination: NextScreen(),
                                   label: {
                                    Label("Next screen", systemImage: "arrowshape.turn.up.right.circle.fill")
                                        .padding()
                                        .foregroundColor(Color("Blue"))
                                   })
                    Button {
                        showSheet = true
                    }
                    label: {
                        Label("Show sheet", systemImage: "info.circle.fill")
                            .padding()
                            .foregroundColor(Color("Blue"))
                    }
                }
                Divider()
                EventCountDisplay()
            }
            .padding()
            .background(Color("Teal"))
            .sheet(isPresented: $showSheet) {
                SheetView()
            }
        }
        
        .onAppear {
            eventCounter.contentViewAppearances += 1
        }
        .onDisappear {
            eventCounter.contentViewDisappearances += 1
        }
        .onChange(of: eventCounter) { _ in
            print("Appear!")
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            eventCounter.willResignActiveNotification += 1
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didFinishLaunchingNotification)) { _ in
            eventCounter.didFinishLaunchingNotification += 1
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification)) { _ in
            eventCounter.didEnterBackgroundNotification += 1
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            eventCounter.willEnterForegroundNotification += 1
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
            eventCounter.didBecomeActiveNotification += 1
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willTerminateNotification)) { _ in
            eventCounter.willTerminateNotification += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
