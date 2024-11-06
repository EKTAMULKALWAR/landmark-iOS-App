//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ekta Mulkalwar on 01/07/24.
//

import SwiftUI
import MapKit

 
struct LandmarkDetail: View {

    @EnvironmentObject var modelData: ModelData

        var landmark: Landmark

        

        var landmarkIndex: Int {

            modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!

        }

    var body: some View {

      ScrollView{

            MapView(coordinate: landmark.locationCoordinate)

                .ignoresSafeArea(edges:.top)

                .frame(height: 300)

            

            CircleImage(image: landmark.image)

                .offset(y: -130)

                .padding(.bottom, -130)

        

            VStack(alignment: .leading) {

                Text(landmark.name)

                    .font(.title)

                HStack {

                    Text(landmark.park)

                    Spacer()

                    Text(landmark.state)

                }

                .font(.subheadline)

                .foregroundColor(.secondary)

                

                Divider()

                

                Text("About \(landmark.name)")

                    .font(.title2)

                Text(landmark.description)

                

            }
            .navigationTitle(landmark.name)

            .navigationBarTitleDisplayMode(.inline)

            .padding()

            

            Spacer()

        }

    }

}


#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[3])

}
