//
//  ContentView.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false
    @State private var showPresentationDetent = false
    @State private var presentedFullScreen = false
    @State private var person: Person?
    // In other words, if we give a value to navigation person, we're going to be then taken into navigation view. But if navigation is nil, then of course we're going to be in root view.
    @State private var navigationPerson: Person?
    
    var body: some View {
        
        NavigationStack {
            VStack (alignment: .leading) {
                Button(action: {
                    showSheet = true
                }, label: {
                    Text("Sheet Presented with Boolean")
                })
                Divider()
                Button(action: {
                    person = Person(name: "Felix")
                }, label: {
                    Text("Sheet Presented with Item")
                })
                Divider()
                Button(action: {
                    showPresentationDetent = true
                }, label: {
                    Text("Sheet Presented as Detent")
                })
                Divider()
                Button(action: {
                    presentedFullScreen = true
                }, label: {
                    Text("Full Screen")
                })
                Divider()
                NavigationLink(destination: NavigationView(), label: {
                    Text("Navigation Link")
                })
                Divider()
                Button(action: {
                    navigationPerson = Person(name: "Josefina")
                }, label: {
                    Text("Navigation Destination with Item")
                })
                Divider()
                NavigationLink(value: Person(name: "James")) {
                    Text("Navigation Destination with Hashable value")
                }
                Divider()
                NavigationLink(value: Person(name: "Bill")) {
                    Text("Bill")
                }
                Divider()
                NavigationLink(value: Person(name: "Laura")) {
                    Text("Laura")
                }
                
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 40)
            .sheet(isPresented: $showSheet, content: { SheetView(showSheet: $showSheet) })
            
            .sheet(item: $person) { person in
                SheetItemView(person: person)
            }
            
            .sheet(isPresented: $showPresentationDetent, content: {
                PresentationDetentView()
                    .presentationDetents([.medium, .large])
            })
            .fullScreenCover(isPresented: $presentedFullScreen, content: {
                FullScreenView()
            })
            
            .navigationDestination(item: $navigationPerson) { person in
                PersonNavigationView(person: person)
            }
            
            .navigationDestination(for: Person.self, destination: { person in
                PersonNavigationView(person: person)
            })
        }

    }
}

#Preview {
    ContentView()
}
