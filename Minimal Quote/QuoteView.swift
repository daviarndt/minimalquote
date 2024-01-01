//
//  QuoteView.swift
//  Minimal Quote
//
//  Created by Davi Arndt on 01/01/24.
//

import SwiftUI

struct QuoteView: View {
    let quote: String
    @State private var displayCharacters = ""
    let timer = Timer.publish(every: 0.07, on: .main , in: .common).autoconnect()
    var body: some View {
        Text(displayCharacters)
            .font(Font.custom("Bebas Neue", size: 32))
            .bold()
            .padding(32)
            .onReceive(timer) { _ in
                if displayCharacters.count < quote.count {
                    let index = quote.index(quote.startIndex, offsetBy: displayCharacters.count)
                    displayCharacters.append(quote[index])
                }
            }
    }
}

#Preview {
    QuoteView(quote: "Sample Text...")
}
