//
//  BudgetView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 16/09/2021.
//

import SwiftUI
import UIKit

struct BudgetView: View {
    @State private var budgetMin = 50.0
    @State private var budgetMax = 50.0
    
    var body: some View {
//        NavigationView{
            VStack{
                Text("Budget")
                HStack(spacing: 10) {
                    VStack {
                        Slider(
                            value: $budgetMin,
                            in: 0...100
                            )
                        .foregroundColor(.red)
                        Text("\(budgetMin)")
                    }
                
                    VStack {
                        Slider(
                            value: $budgetMax,
                            in: 0...100
                            )
                        .foregroundColor(.blue)
                        Text("\(budgetMax)")
                    }
                    
                    
                }
                Spacer()
            }
//        }.navigationTitle("Design Ton Voyage")
//        .navigationBarTitleDisplayMode(.inline)
}
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetView()
    }
}

struct PickerBootCamp: View {
@State private var selection: String = "1"
    
    var body: some View {
        NavigationView{
        VStack{
            HStack{
                Text("Age:")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(1..<100) { number in
                        Text("\(number)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .tag("\(number)")
                    }
                }
            ).pickerStyle(WheelPickerStyle())
        }
        Spacer()
        
//        CurrencyView()
        }.navigationTitle("Budget")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}


    
  //  }.navigationTitle("Design Ton Voyage")
//}
//}
//CurrencyView()
