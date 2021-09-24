//
//  GridView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 15/09/2021.
//

import SwiftUI

struct GridView: View {

    @State private var selectedKeyword = Keyword.budget
    
    @State var minValue: Float = 0.0
    @State var maxValue: Float = Float(UIScreen.main.bounds.width - 50.0)
    
    var body: some View {
        NavigationView {
            VStack{
                HStack (alignment: .center) {
                    Text("Sélectionnez les critères importants")
                        .foregroundColor(.gray)
                        .padding()
                }
                Picker("Keyword", selection: $selectedKeyword)
                {
                    Text("Budget").tag(Keyword.budget)
                    Text("Date et durée").tag(Keyword.date)
                    Text("Destination").tag(Keyword.destination)
                }
                .pickerStyle(SegmentedPickerStyle())
                
                if selectedKeyword == Keyword.budget {
                    BudgetView(minValue: $minValue, maxValue: $maxValue)
                    CurrencyView()
                }
                if selectedKeyword == Keyword.date {
                    DateView()
                }
                else if selectedKeyword == Keyword.destination {
                    CountriesView()
                } // End Condition
                
                ValidationButtonView(minValue: CGFloat(minValue)).padding(.bottom,10.0)
            }.navigationTitle("Personnalisation")
            .navigationBarTitleDisplayMode(.inline)
            // End VStack
            
        } // End NavigationView
    } // Body
    
    struct ValidationButtonView: View {
        //  @Binding var text: String
        @State private var goNext:Bool = false
        var minValue: CGFloat
        
        var body: some View {
            
            NavigationLink(
                destination: DestinationListView(),
                isActive: $goNext,
                label: {
                    Button(action: {
                        goNext = true
                        print(persoChosen)
                    }, label: {
                        Text("Valider")
                            .font(.title2)
                            .bold()
                            .padding()
                            .frame(width: 220, height: 47, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.init(red: 0.498, green: 0.757, blue: 0.980))
                            .cornerRadius(10)
                    })
                }) // End NavLink
        }
    }
    
    struct GridView_Previews: PreviewProvider {
        static var previews: some View {
            GridView()
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}



