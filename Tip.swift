//
//  Tip.swift
//  Travel Tracker
//
//  Created by Allysia Shafira on 23/11/22.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children :[Tip]?
}
