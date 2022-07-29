//
//  PathCategory+CoreDataProperties.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//
//

import Foundation
import CoreData


extension PathCategory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PathCategory> {
        return NSFetchRequest<PathCategory>(entityName: "PathCategory")
    }

    @NSManaged public var currProgress: Double
    @NSManaged public var maxProgress: Double
    @NSManaged public var name: String?
    @NSManaged public var pathNameID: String?
    @NSManaged public var id: String?
    @NSManaged public var pathname: PathName?
    
    public var unwrapID: String {
        id ?? "Missing Path Category ID"
    }
    
    public var unwrapPathNameID: String {
        pathNameID ?? "Missing Path ID"
    }
    
    public var unwrapName: String {
        name ?? "Missing Path Category Name"
    }

}

extension PathCategory : Identifiable {

}
