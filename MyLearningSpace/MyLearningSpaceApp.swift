//
//  MyLearningSpaceApp.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

@main
struct MyLearningSpaceApp: App {
    let dataController = DataController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.viewContext)
        }
    }
}
