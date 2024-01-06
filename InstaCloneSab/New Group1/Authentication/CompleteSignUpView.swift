import SwiftUI

struct CompleteSignUpView: View {
    var body: some View {
        VStack(spacing:12) {
            Spacer()
            Text("Welcome to Instagram")
                .font(.title2)
            Text("Click bellow to continue")
                .font(.footnote)
                .foregroundColor(.gray)
            Button {
                
            } label: {
                Text("Ok")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            
            Spacer()

            
        }//End VStack main
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
