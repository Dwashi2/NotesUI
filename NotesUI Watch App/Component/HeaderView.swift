//
//  HeaderView.swift
//  NotesUI Watch App
//
//  Created by Daniel Washington Ignacio on 12/12/23.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String = ""
    
    var body: some View {
        VStack {
            // Title
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            // Separator
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
        }
    }
}

#Preview {
    Group {
        HeaderView(title: "Credits")
        
        HeaderView()
    }
}
