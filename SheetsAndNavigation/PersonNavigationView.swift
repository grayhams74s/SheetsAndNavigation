//
//  PersonNavigationView.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import SwiftUI

struct PersonNavigationView: View {
    
    let person: Person
    
    var body: some View {
        Text(person.name)
    }
}

#Preview {
    PersonNavigationView(person: Person(name: "paul"))
}
