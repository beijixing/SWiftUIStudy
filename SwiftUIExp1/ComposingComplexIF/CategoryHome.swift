//
//  CategoryHome.swift
//  ComposingComplexIF
//
//  Created by 郑光龙 on 2020/2/24.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
 
    var categories: [String: [LandMark]] {
//        类似SQL中的group by 功能
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue}
        )
    }
    
    var featured:[LandMark] {
        landmarkData.filter {
            $0.isFeatured
        }
    }
    
    @State var showingProfile = false
    
    var profileButton: some View {
        Button(action: {
            self.showingProfile.toggle()
        }){
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
            .accessibility(label: Text("User Profile"))
            .padding()
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                
                FeaturedLandmarksView(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
                NavigationLink(destination: LandmarkList()){
                    Text("See All")
                }
                
                
            }
            
            
            .navigationBarTitle(Text("Featured"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                Text("User Profile")
            }
        }
    }
}


struct FeaturedLandmarksView: View {
    var landmarks: [LandMark]
    
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
