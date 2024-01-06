import SwiftUI

struct ProfileView: View {
    let user:User
    let columns = [
            GridItem(.flexible(), spacing: 1),
            GridItem(.flexible(), spacing: 1),
            GridItem(.flexible(), spacing: 1)
        ]
    var body: some View {
        
        //NavigationStack {
            VStack{
                //Header
                VStack{
                    //Pic and Stats
                    HStack{
                        CircleImage(image: user.profileImageUrl ?? "", width: 80, height: 80)
                        Spacer()
                        UserStatsView(value: "2", name: "Posts")
                        Spacer()
                        UserStatsView(value: "5", name: "Followers")
                        Spacer()
                        UserStatsView(value: "7", name: "Following")
                    }//end HStack
                    
                    //Name and nickname
                    VStack(alignment: .leading,spacing: 8){
                        Text(user.fullname ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text(user.nickname ?? "")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    //Button
                    Button {
                        
                    } label: {
                        Text("Edit Text")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 32)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
                        
                    }
                }//End VStack header
                .padding(.horizontal)
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                
                /*.toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "line.horizontal.3")
                    }
                }*/
            
        //}//End NavigationStack
        
        
            
            
            //Posts
            ScrollView{
                LazyVGrid(columns:columns){
                    ForEach(0...15,id:\.self){index in
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }//End LazyVGrid
            }//End Scrollview
           
            
        }//End main VStack
    }
}

