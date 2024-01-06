import SwiftUI

struct SearchView: View {
    @State private var search:String=""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(User.MOCK_USERS){user in
                        NavigationLink(value: user){
                            HStack{
                                //Image
                                CircleImage(image: user.profileImageUrl ?? "", width: 40, height: 40)
                                //Name and nickname
                                VStack(alignment: .leading){
                                    Text(user.nickname ?? "")
                                        .fontWeight(.semibold)
                                    Text(user.fullname ?? "")
                                        .font(.footnote)
                                }
                                //Alignment leading
                                Spacer()
                            }//End HStack
                            .padding(.leading,10)
                        }//End NavigationLink
                    }
                }//End LazyVStack
                .searchable(text: $search,prompt: "Search...")
            }//End Scrollview
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user:user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }//End NavigationStack
    }
}

