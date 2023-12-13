//
//  Note.swift
//  NotesUI Watch App
//
//  Created by Daniel Washington Ignacio on 12/12/23.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
