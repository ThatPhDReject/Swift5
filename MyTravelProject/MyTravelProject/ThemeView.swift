//
//  ThemeView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 20/09/2021.
//

import SwiftUI

struct ThemeView: View {
    let data = (1...1).map { "Item \($0)" }

    let columns = [
          GridItem(.flexible()),
          GridItem(.flexible()),
          GridItem(.flexible()),
//          GridItem(.flexible())
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Je choisis mon thème")
                    Spacer()
//            }
            LazyVGrid(columns: columns, spacing: -20) {
                ForEach(data, id: \.self) { item in
                    
                    ThemeExtractedView(image: "budgetimg", categoryTitle: "Science"/*, categoryIcon: "banknote", selectedColor: .white*/)
                    ThemeExtractedView(image: "themeimg", categoryTitle: "Travail"/*, categoryIcon: "paintpalette", selectedColor: .white*/)
//                    ThemeExtractedView(image: "destinationimg", categoryTitle: "Business", categoryIcon: "mappin.and.ellipse", selectedColor: .white)
                    ThemeExtractedView(image: "transportimg", categoryTitle: "Mariage"/*, categoryIcon: "airplane", selectedColor: .white*/)
                    ThemeExtractedView(image: "bedroomimg", categoryTitle: "Comic-Con"/*, categoryIcon: "house", selectedColor: .white*/)
                    ThemeExtractedView(image: "calendarimg", categoryTitle: "Famille"/*, categoryIcon: "calendar", selectedColor: .white*/)
                    ThemeExtractedView(image: "securiteimg", categoryTitle: "Vacances"/*, categoryIcon: "shield", selectedColor: .white*/)
                    ThemeExtractedView(image: "dureeimg", categoryTitle: "Gastronomie"/*, categoryIcon: "clock", selectedColor: .white*/)
//                    ThemeExtractedView(image: "dureeeimg", categoryTitle: "Conférence"/*, categoryIcon: "shield", selectedColor: .white*/)
                    ThemeExtractedView(image: "dureeimg", categoryTitle: "Nature"/*, categoryIcon: "clock", selectedColor: .white*/)
                    ThemeExtractedView(image: "calendarimg", categoryTitle: "Places de \rTournage"/*, categoryIcon: "clock", selectedColor: .white*/)
                    ThemeExtractedView(image: "bedroomimg", categoryTitle: "Bien-être"/*, categoryIcon: "clock", selectedColor: .white*/)
                    
                }
                Spacer()
            }
            .padding(.horizontal)
                
            })
                }
                    }
//        }.navigationTitle("Thème")
        .navigationBarTitleDisplayMode(.inline)
                }
    


struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
}

struct ThemeExtractedView: View {
    var image : String
    let categoryTitle: String
//    let categoryIcon: String
//    var selectedColor: Color
    
var body: some View {
    
        Image(image)
            .resizable()
            .cornerRadius(15)
            .frame(width: 90, height: 70)
            .opacity(1)
            .padding(10)
            .overlay(Text(categoryTitle)
                        .bold()
                        .fixedSize(horizontal: true, vertical: true)
                        .fixedSize()
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .padding())

        
        
    
}
}
