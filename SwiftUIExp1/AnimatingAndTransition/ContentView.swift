//
//  ContentView.swift
//  AnimatingAndTransition
//
//  Created by 郑光龙 on 2020/2/22.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HikeView(hike: hikeData[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
