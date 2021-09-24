//
//  GridTestView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 15/09/2021.
//

import SwiftUI

struct GridTestView: View {
    let data = (1...1).map { "Item \($0)" }

    let columns = [
          GridItem(.flexible()),
          GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                HStack (alignment: .center) {
                Image(systemName: "airplane")
                Text("Je selectionne les critères importants")
                    .foregroundColor(.gray)
                    .padding(.top, 20)
//                        .frame(width: 350, height: 73, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 0)
                }
                LazyVGrid(columns: columns, spacing: -20) {
                    ForEach(data, id: \.self) { item in
                        
                        Perso1ExtractedView(image: "budgetimg", categoryTitle: "Budget", categoryIcon: "banknote", selectedColor: .white)
                        Perso1ExtractedView(image: "themeimg", categoryTitle: "Thème", categoryIcon: "paintpalette", selectedColor: .white)
                        Perso1ExtractedView(image: "destinationimg", categoryTitle: "Destination", categoryIcon: "mappin.and.ellipse", selectedColor: .white)
                        Perso1ExtractedView(image: "transportimg", categoryTitle: "Transport", categoryIcon: "airplane", selectedColor: .white)
                        Perso1ExtractedView(image: "bedroomimg", categoryTitle: "Logement", categoryIcon: "house", selectedColor: .white)
                        Perso1ExtractedView(image: "calendarimg", categoryTitle: "Date", categoryIcon: "calendar", selectedColor: .white)
                        Perso1ExtractedView(image: "securiteimg", categoryTitle: "Sécurité", categoryIcon: "shield", selectedColor: .white)
                        Perso1ExtractedView(image: "dureeimg", categoryTitle: "Durée", categoryIcon: "clock", selectedColor: .white)
                        
                    }
                }
                .padding(.horizontal)
                
                
                
                Button(action: {}, label: {
                    Text("Je valide")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 47, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color .black)
//                        .background(Color.init(red: 0.59, green: 0.72, blue: 0.87))
                        .cornerRadius(10)
                })
                
                
            }.navigationTitle("Personnalisation")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }
//        .tabItem {
//            Image(systemName: "sun.min.fill")
//            Text("Sun")}
//        .tabItem{
//            Image(systemName: "heart")
//            Text("Favoris")}
                    
                    
                
                
//        }
                    
//        .ignoresSafeArea()
    }
}
struct GridTestView_Previews: PreviewProvider {
    static var previews: some View {
        GridTestView()
    }
}

struct Perso1ExtractedView: View {
    var image : String
    let categoryTitle: String
    let categoryIcon: String
    var selectedColor: Color
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .cornerRadius(30)
                .frame(width: 160, height: 120)
                .opacity(0.5)
                .padding(10)
            VStack{
                Text(categoryTitle)
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                Image(systemName:categoryIcon)
                    .foregroundColor(.white)
                    .font(.title)
                
            }
            Spacer()
            
        }
    }
}
