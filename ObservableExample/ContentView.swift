//
//  ContentView.swift
//  ObservableExample
//
//  Created by Darian Mitchell  on 2024/3/25.
//


import SwiftUI

struct ContentView: View {
     private var book = Book()
    
    var body: some View {
        VStack {
            Text(book.title)
        }
        .padding()
    }
}



class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
