//
//  HomeScreen.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var data = ["nnnnnnnnn", "mmmmmmmmmmmm", "fffffffff", "fff,mmmmmmgkl", "hhhhhhhhhhhhhhkkkkkkkkkk", "mahmoud"]
    var body: some View {
        VStack {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:12) {
                    
                    ForEach(data, id: \.self) { txt in
                        PostView(postBody:txt)
                    }
                }
            }
            
            Spacer()
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
