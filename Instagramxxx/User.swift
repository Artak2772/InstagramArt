//
//  User.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 18.08.23.
//

import Foundation

struct User : Identifiable ,Codable , Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}


extension User {
    static var MOC_USERS: [User] = [
        .init(id: NSUUID().uuidString , username: "Bari", profileImageUrl: "Bari+", fullName: "Bari Allen", bio: nil,email: "Bari@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Kim", profileImageUrl: "Kardashian+", fullName: "Kim Kardashian", bio: nil, email: "Kardashian@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Lewis", profileImageUrl: "Lewis+", fullName: "Lewis Hamilton", bio: nil, email: "Hamilton@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Macregor", profileImageUrl: "Macregor+", fullName: "conor mcgregor", bio: "Irish professional mixed martial artist", email: "Conor@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Messi", profileImageUrl: "Messi+", fullName: "lionel messi", bio: nil, email: "Messi@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Oliver", profileImageUrl: "Oliver+", fullName: "Oliver queen", bio: nil, email: "Conor@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Ronaldo", profileImageUrl: "Ronaldo+", fullName: "Cristiano Ronaldo", bio: nil, email: "Ronaldo@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Stalon", profileImageUrl: "Stalon+", fullName: "Sylvester stallone", bio: nil, email: "Stalon@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Tom", profileImageUrl: "Tom1", fullName: "Tom Cruise", bio: nil, email: "Tom@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Artak", profileImageUrl: "Artak+", fullName: "Artak Mheryan", bio: nil, email: "Artakmheryan@online.de"),
        
    
    
    ]
}
