//
//  Task.swift
//  taskapp
//
//  Created by Nao Kato on 2021/07/31.
//

import RealmSwift

class Task: Object {
    // ID for management. Primary key.
    @objc dynamic var id = 0

    // Title
    @objc dynamic var title = ""

    // Contents
    @objc dynamic var contents = ""

    // Date
    @objc dynamic var date = Date()
    
    //Category
    @objc dynamic var category = ""
    
    // Set ID as primary key
    override static func primaryKey() -> String? {
        return "id"
    }
}
