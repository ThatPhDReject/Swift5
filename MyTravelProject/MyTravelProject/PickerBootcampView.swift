//
//  PickerBootcampView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 16/09/2021.
//

import SwiftUI

struct CurrencyView: View {
    @State private var selection: String = ""
    enum Monnaie: String, CaseIterable {
        case EUR = "€", USD = "US $", GBP = "£", AUD = "AUS $"
        case CFA = "F CFA"
        }
    var body: some View {
        NavigationView {
            ZStack{
            Rectangle()
            .ignoresSafeArea()
            .foregroundColor(.blue)
                
                VStack{
                    HStack{
                        Text("Monnaie:")
                        .foregroundColor(.white)
                        Text(selection)
                        .foregroundColor(.white)
                    }
                    Picker(
                        selection: $selection,
                        label: Text("Picker"),
                        content: {
                            ForEach(Monnaie.allCases, id: \.self) { monnaie in
                                Text("\(monnaie.rawValue)")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .tag("\(monnaie)")
                            }
                        }
                    ).pickerStyle(WheelPickerStyle())
                }.navigationTitle("Design Ton Voyage - Budget")
                .navigationBarTitleDisplayMode(.inline)
              }
            }
        }
struct CurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyView()
    }
}
}
