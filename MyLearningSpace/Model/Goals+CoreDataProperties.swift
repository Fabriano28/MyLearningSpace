//
//  Goals+CoreDataProperties.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//
//

import Foundation
import CoreData


extension Goals {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goals> {
        return NSFetchRequest<Goals>(entityName: "Goals")
    }

    @NSManaged public var name: String?
    @NSManaged public var status: Bool
    @NSManaged public var categoryID: String?
    @NSManaged public var id: String?
    @NSManaged public var objectives: NSSet?
    
    public var unwrapID: String {
        id ?? "Missing Goal ID"
    }
    
    public var unwrapCategoryID: String {
        categoryID ?? "Missing Category ID"
    }
    
    public var unwrapName: String {
        name ?? "Missing Goal Name"
    }

}

// MARK: Generated accessors for objectives
extension Goals {

    @objc(addObjectivesObject:)
    @NSManaged public func addToObjectives(_ value: Objectives)

    @objc(removeObjectivesObject:)
    @NSManaged public func removeFromObjectives(_ value: Objectives)

    @objc(addObjectives:)
    @NSManaged public func addToObjectives(_ values: NSSet)

    @objc(removeObjectives:)
    @NSManaged public func removeFromObjectives(_ values: NSSet)

}

extension Goals : Identifiable {

}
