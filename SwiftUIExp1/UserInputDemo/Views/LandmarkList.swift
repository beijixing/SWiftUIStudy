//
//  LandmarkList.swift
//  LandMarkDemo
//
//  Created by 郑光龙 on 2020/2/17.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(
                            destination: LandMarkDetail(landmark: landmark)
                                .environmentObject(self.userData)
                        ) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
