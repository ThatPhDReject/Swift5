//
//  FavoriteButton.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 17/09/2021.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    @Binding var date: String
    @EnvironmentObject var modelData: ModelData

    var resultItem: ResultTrip
    

 
    var body: some View {
        
        Button(action: {
            isSet.toggle()
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            formatter.locale = Locale(identifier: "fr_FR")
            date = formatter.string(from: Date())
         /*   historical.append(HistoFav(image: resultItem.image, country: resultItem.destination, city: resultItem.value1, date:formatter.string(from: Date())))
 */
        }, label: {
            Image(systemName: isSet ? "heart.fill" : "heart"
            ).foregroundColor(.red)
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    
    static let modelData = ModelData()

    static var previews: some View {
        FavoriteButton(isSet: .constant(true), date: .constant(""), resultItem: modelData.results[0])
            .environmentObject(modelData)
            .previewDevice("iPhone 12 Pro Max")
    
    }
}
