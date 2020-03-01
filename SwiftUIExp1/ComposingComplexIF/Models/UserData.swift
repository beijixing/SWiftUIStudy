//
//  UserData.swift
//  UserInputDemo
//
//  Created by 郑光龙 on 2020/2/18.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published  var showFavoriteOnly = false
    @Published  var landmarks = landmarkData
    @Published  var profile = Profile.default
}


