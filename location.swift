//
//  location.swift
//  Travel Tracker
//
//  Created by Allysia Shafira on 21/11/22.
//

import Foundation

struct location : Decodable, Identifiable {
    let id: Int
    let name : String
    let country :String
    let description:String
    let more : String
    let latitude :Double
    let longitude:Double
    let heroPicture :String
    let advisory: String
    
  static let example = location(id: 2, name: "Great Smoky Mountains", country: "United States", description: "The Great Smoky Mountains are a mountain range rising along the Tennessee–North Carolina border in the southeastern United States. They are a subrange of the Appalachian Mountains, and form part of the Blue Ridge Physiographic Province. The range is sometimes called the Smoky Mountains and the name is commonly shortened to the Smokies. The Great Smokies are best known as the home of the Great Smoky Mountains National Park, which protects most of the range. The park was established in 1934, and, with over 11 million visits per year, it is the most visited national park in the United States.", more: "The Great Smokies are part of an International Biosphere Reserve. The range is home to an estimated 187,000 acres (76,000 ha) of old growth forest, constituting the largest such stand east of the Mississippi River. The cove hardwood forests in the range's lower elevations are among the most diverse ecosystems in North America, and the Southern Appalachian spruce-fir forest that coats the range's upper elevations is the largest of its kind. The Great Smokies are also home to the densest black bear population in the Eastern United States and the most diverse salamander population outside of the tropics.", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "We accept no liability for any visitors eaten alive by bears.")
}
