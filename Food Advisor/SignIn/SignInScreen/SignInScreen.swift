//
//  SignInScreen.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct SignInScreen: View {
    
    @State var userName = ""
    @State var password = ""
    
    var body: some View {
        
        VStack(spacing: 24.0) {
            
            Image(girls)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Welcome")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            VStack(spacing: 24.0) {
                
                VStack(alignment: .leading, spacing: 6.0) {
                    
                    Text("User Name")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    TextField("Enter your User Name", text: self.$userName)
                        .textFieldStyle(.roundedBorder)
                }
                
                VStack(alignment: .leading, spacing: 6.0) {
                    
                    Text("Password")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    TextField("Enter your Password", text: self.$password)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button("Sign in"){
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .padding()
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
