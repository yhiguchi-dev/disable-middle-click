//
// Created by Yuki Higuchi on 2023/01/15.
//

import AppKit

public class AppDelegate: NSObject, NSApplicationDelegate {
  public func applicationDidFinishLaunching(_ notification: Notification) {
    EventObserver().observeAndDisableMiddleClick {
      NSApplication.shared.terminate(self)
    }
  }
}
