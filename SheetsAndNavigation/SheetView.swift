    //
    //  SheetView.swift
    //  SheetsAndNavigation
    //
    //  Created by felix angcot jr on 2/4/26.
    //

    import SwiftUI

    struct SheetView: View {
        
        @Environment(\.dismiss) var dismiss
        @Binding var showSheet: Bool
        
        var body: some View {
            Text("Brand new sheets")
            
            Button(action: {
                showSheet = false
            }, label: {
                Text("Tap to dismiss")
            })
        }
    }

    #Preview {
        SheetView(showSheet: .constant(true))
    }
