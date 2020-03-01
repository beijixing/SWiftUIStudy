//
//  PageView.swift
//  InterfacingWithUIKit
//
//  Created by 郑光龙 on 2020/3/1.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI

struct PageView<Page : View>: View {
    var viewControllers:[UIHostingController<Page>]
    @State var currentPage = 0
    
//    UIHostingController是UIViewController的子类，在UIKit上下文环境中呈现SwiftUI视图
    init(_ views: [Page]) {
        self.viewControllers = views.map{UIHostingController(rootView: $0)}
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map{FeatureCard(landmark: $0)})
            .aspectRatio(3/2 ,contentMode: .fit)
    }
}
