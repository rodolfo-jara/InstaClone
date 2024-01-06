import Foundation
struct User:Identifiable,Codable,Hashable {
    let id:String
    var username:String
    var profileImageUrl:String?
    var fullname:String?
    var nickname:String?
    let email:String
}

extension User{
    static var MOCK_USERS:[User]=[
        .init(id: UUID().uuidString, username: "Batman",profileImageUrl: "Batman",fullname: "Bruce Wayne",nickname: "Batman" , email: "batman@bcp.com.pe"),
        .init(id: UUID().uuidString, username: "BlackPanter",profileImageUrl: "BlackPanther",fullname: "Black  panter",nickname: "BlackPanter" , email: "BlackPanter@bcp.com.pe"),
        .init(id: UUID().uuidString, username: "Hulk",profileImageUrl: "hulk",fullname: "David Banner",nickname: "Hulk" , email: "hulk@bcp.com.pe"),
        .init(id: UUID().uuidString, username: "Spiderman",profileImageUrl: "spiderman",fullname: "Peter Parker",nickname: "Spiderman" , email: "spiderman@bcp.com.pe"),
        .init(id: UUID().uuidString, username: "Ironman",profileImageUrl: "Ironman",fullname: "Tonny Stark",nickname: "Ironman" , email: "ironman@bcp.com.pe")
    ]
}
