//
//  Header.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct Header: View {
    
    @State var searchBarShowOrder = false
    @State var txt = ""
    
    var body: some View {
        HStack() {
            
            // hide logo when search button is pressed
            
            if !searchBarShowOrder {
                
                Image(logo)
                    .resizable()
                    .frame(width: 60, height: 16)
                
            }
            
            Spacer()
            
            HStack() {
                
                // expand search bar
                
                if searchBarShowOrder == true {
                    
                    Image(systemName:"magnifyingglass")
                    
                    TextField("Search Posts", text: self.$txt)
                        .textFieldStyle(.roundedBorder)
                    
                    Button(action: {
                        
                        withAnimation {
                            searchBarShowOrder.toggle()
                        }
                        
                    }) {
                        
                        Image(systemName: "xmark.circle")
                            .symbolRenderingMode(.monochrome)
                            .foregroundStyle(.black)
                    }
                    
                } else {
                    
                    // hide search bar and show search buttuon
                    
                    Button(action: {
                        
                        withAnimation {
                            searchBarShowOrder.toggle()
                        }
                        
                    }) {
                        
                        Image(search)
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.horizontal, 10)
                    }
                    
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}
