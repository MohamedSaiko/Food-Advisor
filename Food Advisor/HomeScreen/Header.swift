//
//  Header.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(){
            
            Image("\(logo)")
                .resizable()
                .frame(width: 60, height: 16)
            
            Spacer()
            
            Button(action: {
                print("button pressed")
            }) {
                Image("\(search)")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 10)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}
