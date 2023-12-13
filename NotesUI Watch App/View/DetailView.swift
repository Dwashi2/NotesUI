//
//  DetailView.swift
//  NotesUI Watch App
//
//  Created by Daniel Washington Ignacio on 12/12/23.
//

import SwiftUI

 var sampleData: Note = Note(id: UUID(), text: "Hello, World!")

struct DetailView: View {
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isSettingsPresented: Bool = false
    
    @State private var isCreditsPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // Header
            HeaderView(title: "")
            
            // Content
            Spacer()
            
            ScrollView(.vertical){
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // Footer
            HStack(alignment: .center){
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                    })
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            }
            .foregroundColor(.secondary)
        }
        .padding(3)
    }
}

#Preview {
    DetailView(note: sampleData, count: 5, index: 1)
}
