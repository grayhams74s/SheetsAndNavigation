//
//  NavigationView.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        VStack {
            Text("Presented using navigation stack")
            NavigationLink {
                NavigationView()
            } label: {
                Text("Next View")
            }
        }
    }
}

#Preview {
    NavigationView()
}
