//
//  FavoriteButton.swift
//  landmarks
//
//  Created by Abhishek on 29/07/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("Toggle Favorites", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
