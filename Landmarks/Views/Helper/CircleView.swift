//
//  CircleView.swift
//  Landmarks
//
//  Created by student on 18/04/24.
//

import SwiftUI

struct CircleView: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleView(image: Image("turtlerock"))
}
