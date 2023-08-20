//
//  Post.swift
//  Instagramxxx
//
//  Created by Artak Mheryan on 18.08.23.
//
import Foundation




struct Post: Identifiable ,Codable, Hashable {
   
    
    let id: String
    let ovnerUid: String
    let caption: String
    var like: Int
    let imageUrl: String
    let timesTamp: Date
    var user: User?
    
}
 extension Post {
        
        static var MOC_POSTS : [Post] = [
            .init(
                id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "axse",
                  like: 33,
                  imageUrl: "bari1",
                  timesTamp: Date(),
                  user: User.MOC_USERS[0]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "a",
                  like: 445,
                  imageUrl: "kim1",
                  timesTamp: Date(),
              user: User.MOC_USERS[1]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "b",
                  like: 54,
                  imageUrl: "lew1",
                  timesTamp: Date(),
              user: User.MOC_USERS[2]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "c",
                  like: 54,
                  imageUrl: "mag1",
                  timesTamp: Date(),
              user: User.MOC_USERS[3]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "c",
                  like: 34,
                  imageUrl: "messi1",
                  timesTamp: Date(),
              user: User.MOC_USERS[4]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "ff",
                  like: 32,
                  imageUrl: "oliver1",
                  timesTamp: Date(),
              user: User.MOC_USERS[5]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "s",
                  like: 22,
                  imageUrl: "ronaldo1",
                  timesTamp: Date(),
              user: User.MOC_USERS[6]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "aa",
                  like: 12,
                  imageUrl: "salon1",
                  timesTamp: Date(),
              user: User.MOC_USERS[7]) ,
        .init(
            id: NSUUID().uuidString,
                  ovnerUid: NSUUID().uuidString,
                  caption: "asas",
                  like: 332,
                  imageUrl: "tom1",
                  timesTamp: Date(),
              user: User.MOC_USERS[8])
        
        
        
        
        
        ]
        
    }
    
    
    
    
    

