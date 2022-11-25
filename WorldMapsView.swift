//
//  WorldMapsView.swift
//  Travel Tracker
//
//  Created by Allysia Shafira on 22/11/22.
//
import MapKit
import SwiftUI

struct WorldMapsView: View {
    @EnvironmentObject var locations : locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 53.999981, longitude: -6.403740),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
    }
    
    struct WorldMapsView_Previews: PreviewProvider {
        static var previews: some View {
            WorldMapsView()
        }
    }
}
