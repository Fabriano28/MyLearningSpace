//
//  PathName+CoreDataProperties.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//
//

import Foundation
import CoreData


extension PathName {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PathName> {
        return NSFetchRequest<PathName>(entityName: "PathName")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: String?
    @NSManaged public var pathcategory: NSSet?
    
    public var unwrapID: String {
        id ?? "Missing Path ID"
    }

    public var unwrapName: String {
        name ?? "Missing Path Name"
    }


}

// MARK: Generated accessors for pathcategory
extension PathName {

    @objc(addPathcategoryObject:)
    @NSManaged public func addToPathcategory(_ value: PathCategory)

    @objc(removePathcategoryObject:)
    @NSManaged public func removeFromPathcategory(_ value: PathCategory)

    @objc(addPathcategory:)
    @NSManaged public func addToPathcategory(_ values: NSSet)

    @objc(removePathcategory:)
    @NSManaged public func removeFromPathcategory(_ values: NSSet)

}

extension PathName : Identifiable {

}
