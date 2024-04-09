//
//  Data.swift
//  JAGA Details Page
//
//  Created by Arshad Buchori on 03/04/24.
//

import Foundation
import SwiftUI
struct ContentData: View {
    var CD1: String
    var CD2: String
    var body: some View {
        HStack(){
            Text(CD1)
                .frame(maxWidth: 100, alignment:.leading)
            Text(CD2)
            Spacer()
        }
        .padding(.vertical, 11.0)
//                .background(Color.gray)
        Divider()
    }
}
