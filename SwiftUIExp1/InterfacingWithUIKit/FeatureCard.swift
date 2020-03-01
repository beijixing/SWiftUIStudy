//
//  FeatureCard.swift
//  InterfacingWithUIKit
//
//  Created by 郑光龙 on 2020/3/1.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: LandMark
    
    var body: some View {
        landmark.image.resizable()
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: landmarkData[0])
    }
}
