//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ekta Mulkalwar on 01/07/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

        

        var body: some View {

            image

                .clipShape(Circle())

                .overlay {

                    Circle().stroke(.gray, lineWidth: 4)

                }

                .shadow(radius: 7)

        }

    }
#Preview {
    CircleImage(image: Image("turtlerock"))
}
