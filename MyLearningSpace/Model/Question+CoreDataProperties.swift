//
//  Question+CoreDataProperties.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//
//

import Foundation
import CoreData


extension Question {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Question> {
        return NSFetchRequest<Question>(entityName: "Question")
    }

    @NSManaged public var answer: String?
    @NSManaged public var category: String?
    @NSManaged public var choice1: String?
    @NSManaged public var choice2: String?
    @NSManaged public var choice3: String?
    @NSManaged public var choice4: String?
    @NSManaged public var question: String?
    @NSManaged public var objectiveID: String?
    @NSManaged public var objective: Objectives?
    
    public var unwrapObjectiveID: String {
        objectiveID ?? "Missing Objective ID"
    }
    
    public var unwrapQuestion: String {
        question ?? "Missing Question"
    }
    
    public var unwrapChoice1: String {
        choice1 ?? "Missing Question Choice 1"
    }
    
    public var unwrapChoice2: String {
        choice2 ?? "Missing Question Choice 2"
    }
    
    public var unwrapChoice3: String {
        choice3 ?? "Missing Question Choice 3"
    }
    
    public var unwrapChoice4: String {
        choice4 ?? "Missing Question Choice 4"
    }
    
    public var unwrapAnswer: String {
        answer ?? "Missing Question Answer"
    }
    
    public var unwrapCategory: String {
        category ?? "Missing Question Category"
    }

}

extension Question : Identifiable {

}
