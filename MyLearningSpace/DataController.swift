//
//  DataController.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "LearningSpaceModel")
    
    static let shared = DataController()
    
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
    
    static var preview: DataController = {
        let result = DataController()
        let viewContext = result.container.viewContext
        
        let pathCategory1 = PathCategory(context: viewContext)
        pathCategory1.name = "Technical"
        pathCategory1.currProgress = 0.0
        pathCategory1.maxProgress = 100.0
        
        let pathCategory2 = PathCategory(context: viewContext)
        pathCategory2.name = "Process"
        pathCategory2.currProgress = 0.0
        pathCategory2.maxProgress = 100.0
    
        let pathCategory3 = PathCategory(context: viewContext)
        pathCategory3.name = "Design"
        pathCategory3.currProgress = 0.0
        pathCategory3.maxProgress = 100.0
    
        let pathCategory4 = PathCategory(context: viewContext)
        pathCategory4.name = "App and Business Marketing"
        pathCategory4.currProgress = 0.0
        pathCategory4.maxProgress = 100.0
    
        let pathCategory5 = PathCategory(context: viewContext)
        pathCategory5.name = "Professional Skills"
        pathCategory5.currProgress = 0.0
        pathCategory5.maxProgress = 100.0
    
        let pathName1 = PathName(context: viewContext)
        pathName1.name = "iOS Developer"
        pathName1.addToPathcategory(pathCategory1)
        pathName1.addToPathcategory(pathCategory2)
        pathName1.addToPathcategory(pathCategory3)
        pathName1.addToPathcategory(pathCategory4)
        pathName1.addToPathcategory(pathCategory5)
        
        try? viewContext.save()
        
        return result
    }()
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
