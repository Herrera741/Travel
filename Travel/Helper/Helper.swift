//
//  Helper.swift
//  Travel
//
//  Created by Sergio Herrera on 2/17/23.
//

import Foundation

func delay(durationInSeconds seconds: Double, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
//    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//        self.showInitialView()
//    }
    
}
