//
//  MapView.swift
//  Landmarks
//
//  Created by Alecs Konson on 1/25/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinates: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region))) // expects a Binding to a position, which is a bidirectional connection to the value. Use a .constant() binding here because MapView doesn’t need to detect when someone changes the position by interacting with the map.
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinates: landmarks[0].locatoinCoordinates)
}
