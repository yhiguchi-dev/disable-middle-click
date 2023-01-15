//
//  DisableMiddleClickAppApp.swift
//  DisableMiddleClickApp
//
//  Created by Yuki Higuchi on 2023/01/14.
//

import SwiftUI
import DisableMiddleClick

@main
struct DisableMiddleClickApp: App {

    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        MenuBarExtra("Disable Mouse Click", systemImage: "computermouse") {
            ContentView()
        }
    }
}
