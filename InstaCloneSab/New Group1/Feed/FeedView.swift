

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
                LazyVStack {
                    ForEach(0...16,id:\.self){post in
                        FeedCell()
                    }//End for
                }//End LazyVStack
                .padding(.top,10)
            }//End Scrollview
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){   Image(systemName: "paperplane")
                }
            }
        }//End NavigationView
        
       
        
        
        
      
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
