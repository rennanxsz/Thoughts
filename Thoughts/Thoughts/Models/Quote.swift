//
//  Quote.swift
//  Thoughts
//
//  Created by Rennan Bruno on 30/01/22.
//

import Foundation

struct Quote: Codable {
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "〝" + quote + "〞"
    }
    
    var autorFormatted: String {
        return "- " + author + " -"
    }
}
