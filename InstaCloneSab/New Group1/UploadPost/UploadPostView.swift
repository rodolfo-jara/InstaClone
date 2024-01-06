import SwiftUI
import PhotosUI
struct UploadPostView: View {
    @State var caption=""
    @State var isPresented = false
    @State var photoItem:PhotosPickerItem?
    var body: some View {
        VStack {
            //Button actions
            HStack {
                Button {

                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.bold)
                }
            }
            .padding(.horizontal)
            
            //Pic and caption
            HStack {
                Image("Batman")
                    .resizable()
                    .frame(width: 100, height: 100)
                TextField("Caption",text:$caption,axis: .vertical)
            }
            .padding()
            Spacer()
            
        }//End Vstack main
        .onAppear{
            isPresented.toggle()
        }
        .photosPicker(isPresented: $isPresented, selection: $photoItem)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
