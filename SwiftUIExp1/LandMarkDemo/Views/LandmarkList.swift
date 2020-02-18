//
//  LandmarkList.swift
//  LandMarkDemo
//
//  Created by 郑光龙 on 2020/2/17.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData){ landmark in
                NavigationLink(destination: LandMarkDetail(landmark: landmark )) {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE","iPhone XS Max"], id: \.self){ deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        
    }
}
