//
//  LandMarkDetail.swift
//  SwiftUIExp1
//
//  Created by 郑光龙 on 2020/2/17.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark :LandMark
    
    
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
            .frame(height:300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(landmark.name).font(.title)
                HStack{
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }
                
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarkData[0])
    }
}
