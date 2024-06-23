//
//  User.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/23/24.
//

import Foundation

struct User: Codable {
    
    var firstName         = ""
    var lastName          = ""
    var email             = ""
    var birthDate         = Date()
    var extraNapkins      = false
    var frequentRefills   = false
    
}
