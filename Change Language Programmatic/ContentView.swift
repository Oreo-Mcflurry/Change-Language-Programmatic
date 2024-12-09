//
//  ContentView.swift
//  Change Language Programmatic
//
//  Created by A_Mcflurry on 12/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLanguage = Locale.current.languageCode ?? "en"
    
    init() {
        currentLanguage = UserDefaults.standard.string(forKey: "AppleLanguages") ?? "en"
    }
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            
            Button("Change Language \(currentLanguage)") {
                currentLanguage = currentLanguage == "en" ? "ko" : "en"
                UserDefaults.standard.set(["\(currentLanguage)"], forKey: "AppleLanguages")
                UserDefaults.standard.synchronize()
            }
        }
        .padding()
    }
}

enum HandicapCases: LocalizedStringKey, CaseIterable {
    case less10 = "Less than 10"
    case tenTo25 = "10-25"
    case more25 = "More than 25"
    case noHandicap = "I don’t have a handicap"
}
