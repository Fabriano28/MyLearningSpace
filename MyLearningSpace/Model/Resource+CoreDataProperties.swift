//
//  Resource+CoreDataProperties.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//
//

import Foundation
import CoreData


extension Resource {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Resource> {
        return NSFetchRequest<Resource>(entityName: "Resource")
    }

    @NSManaged public var content: String?
    @NSManaged public var objectiveID: String?
    @NSManaged public var videoURL: String?
    @NSManaged public var objective: Objectives?
    
    public var unwrapObjectiveID: String {
        objectiveID ?? "Missing Objective ID"
    }
    
    public var unwrapContent: String {
        content ?? "Missing Resource Content"
    }
    
    public var unwrapVideoURL: String {
        videoURL ?? "Missing Resource Video URL"
    }

}

extension Resource : Identifiable {

}
