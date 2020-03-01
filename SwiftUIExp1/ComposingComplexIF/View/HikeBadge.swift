//
//  HikeBadge.swift
//  ComposingComplexIF
//
//  Created by 郑光龙 on 2020/2/29.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center){
            Badge()
                .frame(width:300, height: 300)
                .scaleEffect(1.0/3.0)
                .frame(width:100, height: 100)
            Text(name)
                .font(.caption)
                .accessibility(label: Text("Badge for \(name)."))
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
