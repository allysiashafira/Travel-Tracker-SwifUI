//
//  ContentView.swift
//  Travel Tracker
//
//  Created by Allysia Shafira on 21/11/22.
//

import SwiftUI

struct ContentView: View {
    let location : location
    var body: some View {
   ScrollView {
       Image(location.heroPicture)
                .resizable()
                .scaledToFit()
       Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
       Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
       Text(location.description)
                .padding(.horizontal)
       
            
            Text("Did You Know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
       Text(location.more)
                .padding(.horizontal)
            
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: location.example)
    }
}
