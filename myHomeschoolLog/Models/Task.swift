//
//  Task.swift
//  myHomeschoolLog
//
//  Created by Dan O on 8/27/20.
//  Copyright © 2020 People Like Us LLC. All rights reserved.
//

import SwiftUI
import Foundation

struct Task: Identifiable {
    // all task will have UUID that will never changes so use let
    let id = UUID()
    
    var name: String
    var completed = false
}
