//
//  DestinationDetailView.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 15/09/2021.
//

import SwiftUI

struct DestinationDetailView: View {
    let items = 1...3
    var imageGallery:[String] = ["Hamburg", "Italie", "mountains", "NewYork"]
    
    
    @EnvironmentObject var modelData: ModelData
    var result: ResultTrip
    var resultIndex: Int {
        modelData.results.firstIndex(where: { $0.id == result.id })!
    }
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            //Structure pour construire la galerie d'images
            GalleryImageDetailView(items: items, array: imageGallery)
                .padding()
            
            HStack{
                Spacer()
                callButton(phoneParam: result.phoneNumber).foregroundColor(Color("myblue"))
                    .padding()
                Spacer()
                LinkButton(linkParam: result.linkBooking).padding()
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading , spacing: 5.0){
                    Text(result.criteria1)
                        .bold()
                    Text(result.criteria2)
                        .bold()
                    Text(result.criteria3)
                        .bold()
                }.padding()
                
                VStack (alignment: .leading , spacing: 5.0){
                    Text(result.value1)
                        .italic()
                    Text(result.value2)
                        .italic()
                    Text(result.value3)
                        .italic()
                }
                .padding()
            }
            
            VStack(alignment: .leading)
            {
                Text("Description")
                    .foregroundColor(Color("myblue"))
                    .bold()
                    .padding()
                
                Text(result.description)
                    .font(.body)
                    .padding()
            }
            .navigationTitle(Text("\(result.destination)"))
            .navigationBarItems(trailing: FavoriteButton(isSet:$modelData.results[resultIndex].isFavorite, date: $modelData.results[resultIndex].date, resultItem: result))
            
            Spacer()
        }
    }
    
    func callButton(phoneParam: String) -> some View {
        
        //CALL ACTION APPELER ASSISTANCE
        return Button(action: {self.showAlert = true}){
            callToActionView(
                callToActionSymbol:"phone.fill.arrow.up.right",
                callToActionName: "Appeler")
        }
        .alert(isPresented: $showAlert){
            Alert(title: Text("Appeler l'assistance pour réserver"),
                  message: Text(phoneParam),
                  primaryButton:.default( Text("Appeler")),
                  secondaryButton: .cancel(Text("Annuler")))
        }
    }
}

struct GalleryImageDetailView: View {
    var items: ClosedRange<Int>
    var array: [String]
    let rows = [
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                    Image(array [item])
                        .font(.largeTitle)
                }
            }
            .frame(height: 150)
        }
    }
}

struct LinkButton: View {
    @Environment(\.openURL) var openURL
    var linkParam: String
    
    var body: some View {
        Button(action:{
                openURL(URL(string:linkParam)!)},
               label: {
                callToActionView(callToActionSymbol: "link", callToActionName: " réserver").foregroundColor(Color("myblue"))
                    .opacity(1.0)
               })
    }
}

struct callToActionView: View {
    var callToActionSymbol: String
    var callToActionName: String
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Image(systemName:callToActionSymbol).foregroundColor(Color("myblue"))
                .opacity(1.0)
                .font(.largeTitle)
            Text(callToActionName)
                .font(.footnote)
        }
    }
}


struct DestinationDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    let formatter = DateFormatter()
    
    static var previews: some View {
        DestinationDetailView(result: modelData.results[0])
            .environmentObject(modelData)
    }
}
