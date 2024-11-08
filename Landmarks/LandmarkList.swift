//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ekta Mulkalwar on 01/07/24.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject var modelData: ModelData

    @State private var showFavoritesOnly = false

    

    var filteredLandmarks: [Landmark] {

        modelData.landmarks.filter { landmark in

            (!showFavoritesOnly || landmark.isFavorite)

        }

    }

    

    var body: some View {

        NavigationView {

            List{

                    Toggle(isOn: $showFavoritesOnly) {

                        Text("Favorite only")

                    }

                    ForEach(filteredLandmarks) { landmark in

                        NavigationLink {

                            LandmarkDetail(landmark: landmark)

                        } label: {

                        LandmarkRow(landmark: landmark)

                        }

                    }

            }

            .navigationTitle("Landmarks")

        }

    }

}



#Preview {
    LandmarkList()

    .environmentObject(ModelData())


}
