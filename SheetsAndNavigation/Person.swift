//
//  Person.swift
//  SheetsAndNavigation
//
//  Created by felix angcot jr on 2/4/26.
//

import Foundation


struct Person: Identifiable, Hashable {
    // So i'll just create an automatically instantiated ID as follows.
    let id = UUID()
    let name: String
    
}

