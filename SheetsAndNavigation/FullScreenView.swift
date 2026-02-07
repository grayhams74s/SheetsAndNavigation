//
//  FullScreenView.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import SwiftUI

struct FullScreenView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button (action: {
                    dismiss()
                }, label: {
                   Image(systemName: "xmark")
                })
                
                Text("This takes up the entire screen!")
            }
            .padding(.top, 40)
            Spacer()
        }
    }
}

#Preview {
    FullScreenView()
}
