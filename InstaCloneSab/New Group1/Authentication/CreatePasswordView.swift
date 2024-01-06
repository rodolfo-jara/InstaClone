import SwiftUI

struct CreatePasswordView: View {
    @State var password=""
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
        NavigationStack{
            
            VStack(spacing: 12) {
                Text("Create a Password")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("Your password must be at least 6 characters")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal,24)
                SecureField("Password",text: $password)
                    .autocapitalization(.none)
                    .modifier(AuthTextfieldModifier())
                
                NavigationLink {
                    CompleteSignUpView()
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

