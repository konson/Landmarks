//
//  Landmark.swift
//  Landmarks
//
//  Created by Alecs Konson on 1/25/24.
//

import Foundation
import SwiftUI
import CoreLocation

// Codaebl makes it easier to move data between the struct and data file.
// Codable includes Decodable component which will read data from the file
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String // make the property private because users of the Landmarks structure care only about the image itself
    var image: Image {
        .init(imageName)
    }
    
    private var coordinates: Coordinates
    var locatoinCoordinates: CLLocationCoordinate2D {
        .init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
