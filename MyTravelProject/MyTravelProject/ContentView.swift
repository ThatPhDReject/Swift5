//
//  ContentView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 15/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Je selectionne les critères importants")
                    .foregroundColor(.gray)
//                Spacer()
                PersoExtractedView(image: "budgetimg", categoryTitle: "Budget", icon: "banknote", selectedColor: .white)
                PersoExtractedView(image: "themeimg", categoryTitle: "Thème", icon: "paintpallete", selectedColor: .white)
                PersoExtractedView(image: "destinationimg", categoryTitle: "Destination", icon: "mappin.and.ellipse", selectedColor: .white)
                PersoExtractedView(image: "transportimg", categoryTitle: "Transport", icon: "airplane", selectedColor: .white)
                PersoExtractedView(image: "logementimg", categoryTitle: "Logement", icon: "house", selectedColor: .white)
                PersoExtractedView(image: "Date", categoryTitle: "Date", icon: "calendar", selectedColor: .white)
                PersoExtractedView(image: "securiteimg", categoryTitle: "Sécurité", icon: "shield", selectedColor: .white)
                PersoExtractedView(image: "dureeimg", categoryTitle: "Durée", icon: "clock", selectedColor: .white)
                Spacer()
                
            }.navigationTitle("Personnalisation")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PersoExtractedView: View {
    var image : String
    let categoryTitle: String
    let icon: String
    var selectedColor: Color
    
    var body: some View {
        ZStack{
            HStack{
            Image(image)
                .resizable()
                .cornerRadius(31)
                .frame(width: 100, height: 100)
            VStack{
                Text(categoryTitle)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .font(.title)
            }
                
            }
        }

    }
}
