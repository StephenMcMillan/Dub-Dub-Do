import CoreData
import SwiftUI

public class Todo: NSManagedObject {}

extension Todo {
    public class func fetchRequest() -> NSFetchRequest<Todo> {
        return NSFetchRequest<Todo>(entityName: "Todo")
    }
    
    @NSManaged var todoDescription: String
    @NSManaged var dateCreated: Date
    @NSManaged var isImportant: Bool 
    @NSManaged var isComplete: Bool
    
    static func create(description: String, in context: NSManagedObjectContext) {
        let newTodo = Todo(context: context)
        newTodo.todoDescription = description
        newTodo.dateCreated = Date()
        newTodo.isImportant = false 
        newTodo.isComplete = false
        
    }
}
