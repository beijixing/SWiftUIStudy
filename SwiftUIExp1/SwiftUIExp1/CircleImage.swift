//
//  CircleImage.swift
//  SwiftUIExp1
//
//  Created by 郑光龙 on 2020/2/14.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
