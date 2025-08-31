import SwiftUI

struct Item: Identifiable, Decodable {
    let id: String
    let name: String
//    let kana: Dictionary<String, String>
    let maker: String
    let price:String
//    let type: String
    let regist: String
//    let tags: Tag
    let image : String
    let comment: String
}

struct Tag: Decodable {
    let tag: [String]
}

struct OkasinotorikoResponse: Decodable {
    
    let item: [Item]?
    let status: String?
    let count: Int?
}


struct OkasinotorikoResponse2: Decodable {
    let item: [Item]
    let status: String
    let count: String
}
