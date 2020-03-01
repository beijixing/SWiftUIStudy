//
//  ProfileSummary.swift
//  ComposingComplexIF
//
//  Created by 郑光龙 on 2020/2/29.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    static var goalFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
        
    }()
    
    
    
    var body: some View {
        List {
            Text("\(profile.username)")
                .bold()
                .font(.title)
            
            Text("Notifications :\(self.profile.prefersNotifications ? "On" : "Off")")
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
            Text("Goal data:  \(self.profile.goalDate,  formatter: Self.goalFormatter)")
            
            
            VStack(alignment: .leading) {
                Text("Completed Badge!")
                    .font(.headline)
                ScrollView{
                    HStack{
                        HikeBadge(name: "First Hike！")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(.degrees(90))
                        HikeBadge(name: "Tenth Hike")
                            .hueRotation(.degrees(45))
                            .grayscale(0.5)
                    }
                }
                .frame(height:140)
            }
            
            VStack(alignment: .leading){
                Text("Recent Hikes")
                    .font(.headline)
                HikeView(hike: hikeData[0])
            }
        }
        
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
