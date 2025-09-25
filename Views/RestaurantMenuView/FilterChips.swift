//
//  FilterChips.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//

import SwiftUI

struct FilterChips: View {
    var filters: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(filters, id: \.self) { filter in
                    Text(filter)
                        .foregroundColor(.black)
                        .padding()
                        .frame(height: 40)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(24)
                }
            }
            .padding()
        }
    }
}
