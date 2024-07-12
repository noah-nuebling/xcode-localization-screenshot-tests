//
//  ContentView.swift
//  LocalizationScreenshotTestIOSAllSwift
//
//  Created by Noah Nübling on 04.07.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .accessibilityIdentifier("myHelloLabel") /// The AXID doesn't help with exporting loc screenshots either :/
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
