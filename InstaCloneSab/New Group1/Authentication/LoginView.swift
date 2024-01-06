

import SwiftUI

struct LoginView: View {
    @State var email:String=""
    @State var password=""
    var body: some View {
        NavigationStack{
            VStack {
                //Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                //Text fields
                VStack {
                    TextField("Email",text:$email)
                        .autocapitalization(.none)
                        .modifier(AuthTextfieldModifier())
                    
                    SecureField("Password",text:$password)
                        .autocapitalization(.none)
                        .modifier(AuthTextfieldModifier())
                    
                }
                
                //Forgot password button
                Button {
                    
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                //Login Button
                Button {
                    //aqui va el codigo a ejecutar
                } label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                //Divider OR
                HStack {
                    Rectangle()
                        .frame(width:UIScreen.main.bounds.width/2 - 40,height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width:UIScreen.main.bounds.width/2 - 40,height: 0.5)
                }
                .foregroundColor(.gray)
                .padding(.top)
                
                //Sign in with social media
                HStack {
                    CircleImage(image: "facebook", width: 20, height: 20)
                    Text("Continue with Facebook")
                }
                .padding(.top)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("Dont have an account?")
                        Text("Sign Up").fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(Color(.systemBlue))
                }
                
            }//End Stack main

            
        }//End NavigationStack
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
