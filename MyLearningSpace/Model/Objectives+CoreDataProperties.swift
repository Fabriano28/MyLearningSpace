//
//  Objectives+CoreDataProperties.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//
//

import Foundation
import CoreData


extension Objectives {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Objectives> {
        return NSFetchRequest<Objectives>(entityName: "Objectives")
    }

    @NSManaged public var name: String?
    @NSManaged public var status1: Bool
    @NSManaged public var status2: Bool
    @NSManaged public var status3: Bool
    @NSManaged public var status4: Bool
    @NSManaged public var id: String?
    @NSManaged public var goalID: String?
    @NSManaged public var goal: Goals?
    @NSManaged public var resource: Resource?
    @NSManaged public var question: NSSet?
    
    public var unwrapID: String {
        id ?? "Missing Objetive ID"
    }
    
    public var unwrapGoalID: String {
        goalID ?? "Missing Goal ID"
    }
    
    public var unwrapName: String {
        name ?? "Missing Objective Name"
    }

}

// MARK: Generated accessors for question
extension Objectives {

    @objc(addQuestionObject:)
    @NSManaged public func addToQuestion(_ value: Question)

    @objc(removeQuestionObject:)
    @NSManaged public func removeFromQuestion(_ value: Question)

    @objc(addQuestion:)
    @NSManaged public func addToQuestion(_ values: NSSet)

    @objc(removeQuestion:)
    @NSManaged public func removeFromQuestion(_ values: NSSet)

}

extension Objectives : Identifiable {

}
