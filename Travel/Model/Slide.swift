//
//  Slide.swift
//  Travel
//
//  Created by Sergio Herrera on 2/19/23.
//

import Foundation

struct Slide {
    let imageName: String
    let title: String
    let description: String
    
    static let collection: [Slide] = [
        Slide(imageName: "imgSlide1", title: "Welcome to Travel", description: "Travel allows you to to travel aroudn the world, make new friends and create memorable experiences."),
        Slide(imageName: "imgSlide2", title: "Connect Socially", description: "Connect across continents to strangers via the app."),
        Slide(imageName: "imgSlide3", title: "Safe and Secure", description: "Each trip is planned accordingly to the strictest safety standards to ensure passenger safety.")
    ]
}
