//
//  locations.swift
//  Travel Tracker
//
//  Created by Allysia Shafira on 21/11/22.
//

import Foundation

class locations:ObservableObject {
    let places: [location]
    
    var primary: location{
        places[0]
    }
    
    init() {
     let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try!JSONDecoder().decode([location].self, from: data)
    
    }
}
 
