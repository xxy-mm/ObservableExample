//
//  ContentView.swift
//  ObservableExample
//
//  Created by Darian Mitchell  on 2024/3/25.
//



import SwiftUI

struct ContentView: View {
     @State private var book = Book()
    
    var body: some View {
        VStack {
            Text(book.title)
            // but is you don't pass data deep down into the subviews
            // you don't need to use Bindings or Bindables.
            // @State has already created bindings can be used in the current view
            // Remember: both @Binding and @Bindable are used to create bindings
            // @Binding is for primitive type
            // @Bindable is for object which conforms the Observable protocol
            TextField("title", text: $book.title)
        }
        .padding()
    }
}

@Observable
class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
