//
//  SignInViewModel.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import Foundation

final class SignInViewModel: ObservableObject{
    
    private let authenticationManager = AuthenticationManager()
    
    func authenticateUser() {
        authenticationManager.authenticate(with: "kminchelle", password: "0lelplR")
    }

}
