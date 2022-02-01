//
//  QuotesMenager.swift
//  Thoughts
//
//  Created by Rennan Bruno on 30/01/22.
//

import Foundation

class QuotesManager {
    
    let quotes: [Quote]
    
    init () {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
}
