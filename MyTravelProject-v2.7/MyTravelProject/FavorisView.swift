//
//  FavorisView.swift
//  MyTravelProject
//
//  Created by Paliani Théodore on 15/09/2021.
//

import SwiftUI


struct FavorisView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var filteredResults: [ResultTrip] {
        modelData.results.filter { result in result.isFavorite
        }
    }
    
    var body: some View {
        
        NavigationView {
            List{
            VStack(alignment: .leading){
                
                Text("Vous avez \(filteredResults.count) favoris")
                    .font(.title2)
                    .foregroundColor(Color("myblue"))
                    .padding()
                
                
                ForEach(filteredResults) {
                    row in
                    NavigationLink(destination: DestinationDetailView(result: row)) {
                        FavoriItemView(favList: row)
                    }
                }
                //.onDelete(perform: delete)
            }
            }.navigationBarTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    func delete(at offsets: IndexSet) {
   //     filteredResults.remove(atOffsets: offsets)
    }
    
    struct FavoriItemView: View {
        
        //  var favList: HistoFav
        var favList: ResultTrip
        var body: some View {
            HStack{
                
                
                Image(favList.image)
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius(8.0)
                    .scaledToFill()
                    .padding(.all)
                
                VStack(alignment: .leading, spacing: nil)
                {
                    Text(favList.destination)
                        .font(.subheadline)
                        .bold()
                    
                    Text("\(favList.criteria1):  \(favList.value1)")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .bold()
                    
                    Text("\(favList.criteria2): \(favList.value2)")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .bold()
                    
                    Text("\(favList.criteria3): \(favList.value3)")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .bold()
                    
                    Text("Ajouté le \(favList.date)")
                        .font(.footnote)
                }
                
                Spacer()
            }
        }
    }
    
    struct FavorisView_Previews: PreviewProvider {
        static var modelData = ModelData()
        
        static var previews: some View {
            FavorisView()
                .previewDevice("iPhone 12 Pro Max")
                .environmentObject(modelData)
        }
    }
}
