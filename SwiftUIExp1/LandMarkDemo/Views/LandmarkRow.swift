//
//  LandmarkRow.swift
//  LandMarkDemo
//
//  Created by 郑光龙 on 2020/2/17.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height:70))
        
    }
}
