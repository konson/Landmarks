//
//  CircleImage.swift
//  Landmarks
//
//  Created by Alecs Konson on 1/25/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: landmarks[4].image)
}
