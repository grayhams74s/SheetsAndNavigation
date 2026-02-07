//
//  PresentationDetentView.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import SwiftUI

struct PresentationDetentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Image("banana")
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .padding(.top, 16)
                .shadow(color: .yellow.opacity(0.3), radius: 7, x: 0, y: 3)
            Text("Banana")
                .font(.largeTitle.bold())
                .foregroundStyle(.primary)
            Text("105 kcal")
                .font(.title2.weight(.semibold))
                .foregroundStyle(.secondary)
            HStack(spacing: 32) {
                VStack {
                    Text("27g")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    Text("Carbs")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                VStack {
                    Text("1.3g")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    Text("Protein")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                VStack {
                    Text("0.3g")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    Text("Fat")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.bottom, 16)
        }
        .frame(maxWidth: 320)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
        .shadow(color: .yellow.opacity(0.22), radius: 10, x: 0, y: 6)
        .padding()
    }
}

#Preview {
    PresentationDetentView()
}
