//
//  ContentView.swift
//  DisableMiddleClickApp
//
//  Created by Yuki Higuchi on 2023/01/14.
//

import SwiftUI

public struct ContentView: View {

    public init() {
    }

    public var body: some View {
        Button("Quit") {
            NSApplication.shared.terminate(nil)
        }.keyboardShortcut("q")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
