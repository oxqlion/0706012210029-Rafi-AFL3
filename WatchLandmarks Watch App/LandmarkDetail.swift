//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by student on 25/04/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        CircleView(image: landmark.image.resizable())
            .scaledToFill()
        
        Text(landmark.name)
            .font(.headline)
            .lineLimit(0)
        
        Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
            Text("Favorite")
        }
        
        Divider()
        
        Text(landmark.park)
            .font(.caption)
            .bold()
            .lineLimit(0)
        
        Text(landmark.state)
            .font(.caption)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
