//
//  CreditsView.swift
//  NotesUI Watch App
//
//  Created by Daniel Washington Ignacio on 12/12/23.
//

import SwiftUI

struct CreditsView: View {
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    
    var body: some View {
        VStack(spacing: 3) {
            // profile image
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // header
            HeaderView(title: "Credits")
            
            //content
            Text("Daniel Washington Ignacio")
                .foregroundColor(.primary)
                .fontWeight(.bold)
                .fixedSize(horizontal: false, vertical: true)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        }
    }
}

#Preview {
    CreditsView()
}
