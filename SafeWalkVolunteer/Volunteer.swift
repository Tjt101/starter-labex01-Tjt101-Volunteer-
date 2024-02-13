//
//  Volunteer.swift
//  SafeWalkVolunteer
//
//

import Foundation
import Combine

protocol Volunteer: ObservableObject {
    var name: String { get set }
    var age: Int { get set }
    var maxHours: Int { get }
}

// TODO: Create a class called SafeWalkVolunteer that implementes the Volunteer protocol.
class SafeWalkVolunteer: Volunteer {
    @Published var name: String
    @Published var age: Int
    
    // TODO: Create an initializer without parameters that sets name to an empty string and age to 0.
    init(){
        self.name = ""
        self.age = 0
    }
    
    // TODO: Create another initializer that accepts a a String parameter called name and an Int parameter called age. Assign the parameter values to the corresponding properties of the class.
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // TODO: Create an Int maxHours computed property. It is a get-only property that returns 1 if the volunteer's age is less than 18 and returns 3 if the volunteer's age is 18 and over.
    var maxHours: Int {
        return age < 18 ? 1 : 3
    }
}
