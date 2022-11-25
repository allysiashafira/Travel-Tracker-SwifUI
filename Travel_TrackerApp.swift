//
//  Travel_TrackerApp.swift
//  Travel Tracker
//
//  Created by Allysia Shafira on 21/11/22.
//

import SwiftUI

@main
struct Travel_TrackerApp: App {
   @StateObject var locations = locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView{
                    WorldMapsView()
                }
                .tabItem{
                    Image(systemName: "globe.europe.africa.fill")
                    Text("Locations")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
