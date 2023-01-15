//
// Created by Yuki Higuchi on 2023/01/15.
//

import SwiftUI

public class AppDelegate: NSObject, NSApplicationDelegate {
  public func applicationDidFinishLaunching(_ notification: Notification) {
    EventHandler().handleAndDisableMiddleClick {
      NSApplication.shared.terminate(self)
    }
  }
}
