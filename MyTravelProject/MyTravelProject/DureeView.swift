//
//  PickerBootcampView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 16/09/2021.
//

import SwiftUI

struct DureeView: View {
    @State private var heuresSelection: String = ""
    @State private var joursSelection: String = ""
    @State private var semainesSelection: String = ""
    @State private var moisSelection: String = ""
    @State private var ansSelection: String = ""
    @State private var heuresSelection2: String = ""
    @State private var joursSelection2: String = ""
    @State private var semainesSelection2: String = ""
    @State private var moisSelection2: String = ""
    @State private var ansSelection2: String = ""

    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                Text("\rDesign Ton Voyage - Durée")
                .font(.title3)
                .background(Color.clear)
                    Spacer()
                        
                Form {
                    
                    Picker(
                        selection: $heuresSelection,
                        label: Text("\(heuresSelection) Heures"),
                        content: {
                            ForEach(0..<25) { number in
                                Text("\(number)")
                                .font(.title)
                                .foregroundColor(.black)
                                .tag("\(number)")
                            }
                        }
                    )
                    Picker(
                        selection: $joursSelection,
                        label: Text("\(joursSelection) Jours "),
                        content: {
                            ForEach(0..<8) { number in
                                Text("\(number)")
                                .font(.title)
                                .foregroundColor(.black)
                                .tag("\(number)")
                            }
                        }
                    )
                     Picker(
                     selection: $semainesSelection,
                     label: Text("\(semainesSelection) Semaines"),
                     content: {
                     ForEach(0..<53) { number in
                     Text("\(number)")
                     .font(.title)
                     .foregroundColor(.black)
                     .tag("\(number)")
                            }
                        }
                     )
                     
                     Picker(
                     selection: $moisSelection,
                     label: Text("\(moisSelection) Mois"),
                     content: {
                        ForEach(0..<13) { number in
                            Text("\(number)")
                            .font(.title)
                            .foregroundColor(.black)
                            .tag("\(number)")
                                        }
                                }
                            )
                      Picker(
                      selection: $ansSelection,
                      label: Text("\(ansSelection) Ans"),
                      content: {
                         ForEach(0..<100) { number in
                             Text("\(number)")
                             .font(.title)
                             .foregroundColor(.black)
                             .tag("\(number)")
                                            }
                                }
                            )
            }
                
                    Text("Je veux voyager pendant une durée de \(heuresSelection) heures  \(joursSelection) jours  \(semainesSelection) semaines  \(moisSelection) mois et \(ansSelection) ans avec une flexibilité de \(heuresSelection2) heures \(joursSelection2) jours \(semainesSelection2) semaines \(moisSelection2) mois et \(ansSelection2) ans")
                        .frame(width: 300, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.clear)
                Form {
                    
                    Picker(
                        selection: $heuresSelection2,
                        label: Text("\(heuresSelection2) Heures"),
                        content: {
                            ForEach(0..<25) { number in
                                Text("\(number)")
                                .font(.title)
                                .foregroundColor(.black)
                                .tag("\(number)")
                            }
                        }
                    )
                    Picker(
                        selection: $joursSelection2,
                        label: Text("\(joursSelection2) Jours "),
                        content: {
                            ForEach(0..<8) { number in
                                Text("\(number)")
                                .font(.title)
                                .foregroundColor(.black)
                                .tag("\(number)")
                            }
                        }
                    )
                     Picker(
                     selection: $semainesSelection2,
                     label: Text("\(semainesSelection2) Semaines"),
                     content: {
                     ForEach(0..<53) { number in
                     Text("\(number)")
                     .font(.title)
                     .foregroundColor(.black)
                     .tag("\(number)")
                            }
                        }
                     )
                     
                     Picker(
                     selection: $moisSelection2,
                     label: Text("\(moisSelection2) Mois"),
                     content: {
                        ForEach(0..<13) { number in
                            Text("\(number)")
                            .font(.title)
                            .foregroundColor(.black)
                            .tag("\(number)")
                                        }
                                }
                            )
                      Picker(
                      selection: $ansSelection2,
                      label: Text("\(ansSelection2) Ans"),
                      content: {
                         ForEach(0..<100) { number in
                             Text("\(number)")
                             .font(.title)
                             .foregroundColor(.black)
                             .tag("\(number)")
                                            }
                                }
                            )
                        }.navigationTitle("Design Ton Voyage - Durée")
            .navigationBarTitleDisplayMode(.inline)
        }
                
                    
                    }
                }
            }
        }
    
    
    
    

struct DureeView_Previews: PreviewProvider {
        static var previews: some View {
            DureeView()
        }
    }
