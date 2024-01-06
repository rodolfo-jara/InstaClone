import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            //Pic and name
            HStack{
                CircleImage(image: "Batman", width: 40, height: 40)
                Text("Batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }//End HStack
            .padding(.leading,8)
            //Post Image
            Image("Batman")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
            
            //Button actions
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                }
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                }
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                }
                Spacer()

            }//End HStack
            .foregroundColor(.black)
            .padding(.leading,8)
            .padding(.top,4)
            
            //Likes
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,8)
                .padding(.top,1)
            //Caption
            HStack {
                Text("Batman ").fontWeight(.semibold) +
                Text("The dark knight returns")
                Spacer()
            }
            .font(.footnote)
            .padding(.leading,8)
            .padding(.top,1)
            //text time
            Text("6h ago")
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,8)
                .padding(.top,1)
            
            
            
        }//End Vstack main
        
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
