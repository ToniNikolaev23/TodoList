//
//  ItemModel.swift
//  TodoList
//
//  Created by Toni Stoyanov on 27.11.24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
