//
//  ListView.swift
//  TodoList
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "First title", isCompleted: false),
        ItemModel(title: "Second title", isCompleted: true),
        ItemModel(title: "Third title", isCompleted: false)
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            
           
        }
        .navigationTitle("TodoList")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add")
                }

            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}


