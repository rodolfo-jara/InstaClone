import SwiftUI

struct UserStatsView: View {
    let value:String
    let name:String
    var body: some View {
        VStack{
            Text(value)
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(name)
                .font(.footnote)
        }
    }
}


