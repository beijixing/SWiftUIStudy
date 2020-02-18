//
//  ContentView.swift
//  LandMarkDemo
//
//  Created by 郑光龙 on 2020/2/17.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            LandmarkRow(landmark: landmarkData[0]).frame(height:60)

            Text("Hello, World!")
                  
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
