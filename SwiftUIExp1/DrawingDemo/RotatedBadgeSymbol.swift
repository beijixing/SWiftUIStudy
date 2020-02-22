//
//  RotatedBadge.swift
//  DrawingDemo
//
//  Created by 郑光龙 on 2020/2/21.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var angle: Angle
    
    var body: some View {
        BadgeSymbol()
        .padding(60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadge_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 2))
    }
}
