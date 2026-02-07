//
//  SheetItemView.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import SwiftUI

struct SheetItemView: View {
    
    let person: Person
    
    var body: some View {
        Text("The name of the person presented is \(person.name)")
    }
}

#Preview {
    SheetItemView(person: Person(name: "Felix"))
}
