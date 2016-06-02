//
//  SwiftModel.swift
//  SomeJSONDemo
//
//  Created by z on 16/6/2.
//  Copyright © 2016年 LC. All rights reserved.
//

import UIKit
import Argo
import Curry


struct Author {
    let id: Int
    let name: String
}

extension Author: Decodable {
    static func decode(json: JSON) -> Decoded<Author.DecodedType> {
        return curry(self.init)
            <^> json <| "id"
            <*> json <| "name"
    }
}

struct Comments {
    let author: Author
    let text: String
}

extension Comments: Decodable {
    static func decode(json: JSON) -> Decoded<Comments.DecodedType> {
        return curry(self.init)
            <^> json <| "author"
            <*> json <| "text"
    }
}

struct SwiftModel {
    let author: [Author]
    let text: String
    let comments: [Comments]
}

extension SwiftModel: Decodable {
    static func decode(json: JSON) -> Decoded<SwiftModel.DecodedType> {
        return curry(self.init)
            <^> json <|| ["author"]
            <*> json <| "text"
            <*> json <|| ["comments"]
    }
}


