//
//  ContentView.swift
//  StringsdataFileTest
//
//  Created by Noah Nübling on 27.06.24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    var storedString = ""
    
    init() {
        var options = String.LocalizationOptions()
        options.replacements = nil // Don't know what this does
        storedString = String.init(localized: "the.keyyy.eyy", defaultValue: "the default value!", options: options, table: "WoodenTable", bundle: Bundle.main, locale: Locale.current, comment: "youtbe comment hhihihiahooohohohohoh")
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
