//
//  PathProgressItem.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import Foundation
import SwiftUI

struct PathProgressItem: Identifiable{
    var id: Int
    var itemName: String
    var currProgress: Double
    var maxProgress: Double
}

var pathItem = [
    PathProgressItem(id: 0, itemName: "Technical", currProgress: 50, maxProgress: 100),
    PathProgressItem(id: 1, itemName: "Process", currProgress: 50, maxProgress: 100),
    PathProgressItem(id: 2, itemName: "Design", currProgress: 25, maxProgress: 100),
    PathProgressItem(id: 3, itemName: "Business", currProgress: 0, maxProgress: 100),
    PathProgressItem(id: 4, itemName: "Skills", currProgress: 25, maxProgress: 100)
]
