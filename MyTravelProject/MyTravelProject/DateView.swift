//
//  PickerBootcampView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 16/09/2021.
//

import SwiftUI

struct PickerView<DropDownView, unitSelection, UnitMenu> where DropDownView : View, unitSelection : Hashable, UnitMenu : View {
    @State private var unitMenu: String = ""
    enum Unit: String, CaseIterable {
        case heures
        case semaines
        case mois
        case ans
        }
    
    var body: some View {

        VStack(alignment: .center){
        Picker(
            selection: $unitMenu,
            label: Text("Unit"),
            content: {
                ForEach(Unit.allCases, id: \.self) { unit in
                    Text("\(unit.rawValue)")
                    .font(.title)
                    .foregroundColor(.black)
                    .tag("\(unit)")
                                                    }
            })//.pickerStyle(WheelPickerStyle())
                                                    }
                        }
                                            }

struct DateView: View {
    @State private var amount: String = ""
    @State private var amount2: String = ""
        
    var body: some View {
        NavigationView{
            ZStack{
            Rectangle()
            .ignoresSafeArea()
//                .foregroundColor(.blue)
                VStack(alignment: .center) {
                    Text("\r Design Ton Voyage - Date\r")
                        .foregroundColor(.white)
                    

                    DatePicker(selection: .constant(Date()), label: { Text("\tAller")
                        .foregroundColor(.white)
                    })
                        HStack{
                            Text("\tFlexibilité:")
                            .foregroundColor(.white)
                            TextField("n", text: $amount)
                            .frame(width: 50, height: 30, alignment: .center)
                            .border(Color.white)
                            .cornerRadius(3)
                            .foregroundColor(.blue)
                            .keyboardType(.numberPad)
                            .border(Color(UIColor.separator))
                            Spacer()
                            
                
                }
Text("\r \r \r \r")
            DatePicker(selection: .constant(Date()), label: { Text(" \tRetour")
                .foregroundColor(.white)
            })
            HStack{
                Text("\tFlexibilité:")
                .foregroundColor(.white)
                TextField("Placeholder", text: $amount2)
                .frame(width: 50, height: 30, alignment: .center)
                .border(Color.white)
                .cornerRadius(3)
                .foregroundColor(.blue)
                .keyboardType(.numberPad)
                .border(Color(UIColor.separator))
                Spacer()
            }
            
            Spacer()
                }
            }.navigationTitle("Design Ton Voyage - Date")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

//struct PickerView<DropDownView, unitSelection, UnitMenu> where DropDownView : View, unitSelection : Hashable, UnitMenu : View {
//    @State private var unitMenu: String = ""
//    enum Unit: String, CaseIterable {
//        case heures
//        case semaines
//        case mois
//        case ans
//        }
//
//    var body: some View {
//
//        VStack(alignment: .center){
//        Picker(
//            selection: $unitMenu,
//            label: Text("Unit"),
//            content: {
//                ForEach(Unit.allCases, id: \.self) { unit in
//                    Text("\(unit.rawValue)")
//                    .font(.title)
//                    .foregroundColor(.black)
//                    .tag("\(unit)")
//                                                    }
//            }).pickerStyle(WheelPickerStyle())
//                                                    }
//                        }
//                                            }


struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
            }
        }


