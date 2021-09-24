//
//  TabBarView.swift
//  MyTravelProject
//
//  Created by olivierruiz on 16/09/2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView /*(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/)*/ {
            //Seul le mauvais nom fonctionne
            GridView()
            .tabItem {
            Label("Rechercher", systemImage: "magnifyingglass")}.tag(1)
            
            FavorisView()
            .tabItem {
                Label("Favoris", systemImage: "heart")

            }.tag(3)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
