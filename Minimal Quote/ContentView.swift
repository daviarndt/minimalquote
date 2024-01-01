//
//  ContentView.swift
//  Minimal Quote
//
//  Created by Davi Arndt on 01/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            QuoteView(quote:"Sample Text... \n\n- Sample Author...")
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
