//
//  DisableMiddleClickAppApp.swift
//  DisableMiddleClickApp
//
//  Created by Yuki Higuchi on 2023/01/14.
//

import DisableMiddleClick
import SwiftUI

@main
struct DisableMiddleClickApp: App {

  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

  var body: some Scene {
    MenuBarExtra("Disable Mouse Click", systemImage: "computermouse") {
      ContentView()
    }
  }
}
