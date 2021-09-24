//
//  CurrencyView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 16/09/2021.
//

import SwiftUI

struct CurrencyView: View {
    @State private var selection: String = ""
   //var persoCrtieria: PersoCriteria

    var body: some View {
            ZStack{
            Rectangle()
            .ignoresSafeArea()
            .foregroundColor(.white)
                
                VStack{
                    HStack{
                        Text("Sélectionnez votre devise : \(selection)")
                            .foregroundColor(.gray)
                    }
                    Picker(
                        selection: $selection,
                        label: Text("Picker"),
                        content: {
                            ForEach(Monnaie.allCases, id: \.self) { monnaie in
                                Text("\(monnaie.rawValue)")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    .tag("\(monnaie)")
                          //     persoChosen.currency = monnaie.rawValue
                            }
                        }
                    ).pickerStyle(WheelPickerStyle())
                   // .padding(0)
                }
              }
            }

        }

struct CurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyView()
    }
}
