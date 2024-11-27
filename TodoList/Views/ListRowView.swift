//
//  ListRowView.swift
//  TodoList
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "Test", isCompleted: false))
        .previewLayout(.sizeThatFits)
}
