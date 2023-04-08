//
//  Food_AdvisorApp.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI
import UIKit

@main
struct Food_AdvisorApp: App {
    var body: some Scene {
        WindowGroup {
            StoryboardViewer()
        }
    }
}

struct StoryboardViewer: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "Home")
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<StoryboardViewer>) {
    }
}
