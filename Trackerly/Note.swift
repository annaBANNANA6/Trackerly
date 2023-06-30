//
//  Note.swift
//  Trackerly
//
//  Created by Yashaswi Bista on 6/30/23.
//

import CoreData
@objc(Note)
class Note: NSManagedObject
{
    @NSManaged var id: NSNumber!
    @NSManaged var title: String!
    @NSManaged var desc: String!
    @NSManaged var deletedDate: Date?
}
