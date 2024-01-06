import SwiftUI

struct AddEmailView: View {
    @State var email=""
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
        NavigationStack{
            
            VStack(spacing: 12) {
                Text("Add Your Email")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("You will use this email to sign in in to your account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal,24)
                TextField("Email",text: $email)
                    .autocapitalization(.none)
                    .modifier(AuthTextfieldModifier())
                
                
                NavigationLink {
                    CreateUsernameView()
                        .navigationBarBackButtonHidden()
                    
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }

                
                /*Button {
                    
                } label: {
                  
                }*/
                
                Spacer()

                
            }//End VStack main
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            self.dismiss()
                        }
                }
            }
            
        }//End NavigationStack
        
       
    }
}


