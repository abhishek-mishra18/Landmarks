//
//  SwiftUIView.swift
//  landmarks
//
//  Created by Abhishek on 26/07/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 300,height: 300)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white,lineWidth: 4)
            }.shadow(radius: 10)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}

