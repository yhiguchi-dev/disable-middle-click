import SwiftUI

public class EventHandler {

  func handleAndDisableMiddleClick(callback: () -> Void) {
    let eventMask = CGEventMask(
      (1 << CGEventType.otherMouseUp.rawValue) | (1 << CGEventType.otherMouseDown.rawValue))
    if let matchPort = CGEvent.tapCreate(
      tap: .cgSessionEventTap,
      place: .headInsertEventTap,
      options: .defaultTap,
      eventsOfInterest: eventMask,
      callback: {
        (
          proxy: CGEventTapProxy, type: CGEventType, event: CGEvent,
          refcon: UnsafeMutableRawPointer?
        ) -> Unmanaged<CGEvent>? in
        if [.otherMouseUp, .otherMouseDown].contains(type) {
          event.setIntegerValueField(.mouseEventButtonNumber, value: 4)
        }
        return Unmanaged.passRetained(event)
      },
      userInfo: UnsafeMutableRawPointer(Unmanaged.passRetained(self).toOpaque())
    ) {
      let runLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, matchPort, 0)
      CFRunLoopAddSource(CFRunLoopGetCurrent(), runLoopSource, .commonModes)
      CGEvent.tapEnable(tap: matchPort, enable: true)
    } else {
      callback()
    }
  }
}
