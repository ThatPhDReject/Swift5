//
//  LogementView.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 20/09/2021.
//

import SwiftUI



struct LogementView: View {
    @State private var chambresSelection: String = ""
    @State private var litSelection: [String] = ["1 place, Double, King size, Queen Size"]
    @State private var bainsSelection: String = ""
    @State private var eauxSelection: String = ""
    var body: some View {
        NavigationView{
            ZStack{
//                Rectangle()
//                    .background(Color.clear)
                    
                        VStack {
                            VStack(alignment: .center, spacing: nil, content: {
                    
//                                
                                Text("Je choisis mon style de logement")
                                .padding()
                                Divider()
                                
                                ScrollView(.horizontal){
                                    LogementScrollExtractedView()
                        
                    }
                        Divider()
                        Text("Emplacement")
                        .padding()
                        Divider()
                        ScrollView(.horizontal){
                            EmplacementScrollExtractedView()
                        }
                        
                    
                    Group {
                        Divider()
                        Text("Equipement")
                        Divider()
                        
                        Form{
                            Picker(
                            selection: $chambresSelection,
                            label: Text("\(chambresSelection) Chambres"),
                            content: {
                                ForEach(0..<1000) { number in
                                    Text("\(number)")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .tag("\(number)")
                                                }
                                        })
//                            Picker(
//                            selection: $litSelection,
//                            label: Text(" Lit"),
//                            content: {
////                                ForEach(0..<5) { number in
//                                    Text(String(format: "\($litSelection)"))
//                                    .font(.title)
//                                    .foregroundColor(.black)
//                                    .tag("\($litSelection)")
//                                                }
////                                        }
//                        )
                            Picker(
                            selection: $bainsSelection,
                            label: Text("\(bainsSelection) Salles de Bain"),
                            content: {
                                ForEach(0..<1000) { number in
                                    Text("\(number)")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .tag("\(number)")
                                                }
                                        })
                            
                            PrivatifBainView()
                            
                            Picker(
                            selection: $eauxSelection,
                            label: Text("\(eauxSelection) Salles d'eau"),
                            content: {
                                ForEach(0..<1000) { number in
                                    Text("\(number)")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .tag("\(number)")
                                                }
                                        })
                            Group {
                                PrivatifEauView()
                                WifiView()
                                EthernetView()
                                BureauView()
                                FrigidaireView()
                                FreezerView()
                                CongelateurView()
                                FourView()
                                MicroOndeView()
                                ServiceView()
                                
                                
                            }
                            
                            
                        }
                        
                    
                    Spacer()
                    Divider()
                    Text("Accessibilité")
                        Divider()
                        
                    Form{
                       AscenseurView()
                        EscalierView()
                        }
                    Spacer()
                }.navigationTitle("Design Ton Voyage - Logement")
                    .navigationBarTitleDisplayMode(.inline)

                                })
//
                        }
                    }
                }
    }

struct LogementView_Previews: PreviewProvider {
    static var previews: some View {
        LogementView()
    }
}

struct LogementScrollExtractedView: View {
    var image: [String] = [""]
    var option: [String] = [""]
    
    var body: some View {
        HStack {
            Text("Hôtel")
            .padding(20)
            Text("AirBnB")
            .padding(20)
            Text("Location")
            .padding(20)
            Text("Colocation")
            .padding(20)
            Text("Location")
            .padding(20)
            Text("TreeHouse")
            .padding(20)
            Text("Château")
            .padding(20)
            Text("Maison")
            .padding(20)
            Text("Appartement")
            .padding(20)
            
        }
        }
    }
}

struct EmplacementScrollExtractedView: View {
    var imagePlace:[String] = [""]
    var optionPlace: [String] = [""]
    
    var body: some View {
        HStack{
                Text("En Ville")
                    .padding(20)
                Text("Plage")
                    .padding(20)
                Text("Pharmacie")
                .padding(20)
                Text("Campagne")
                .padding(20)
            }
        }
        
    }
//}

//Accessibilité Form struct

struct AscenseurView : View {
    @State private var ascenseurOn = false
    
    var body: some View {
        Toggle(isOn: $ascenseurOn, label: {
            Text("Ascenseur")
        })
    }
}

struct EscalierView : View {
    @State private var escaliersOn = false
    
    var body: some View {
        Toggle(isOn: $escaliersOn, label: {
            Text("Escaliers")
        })
    }
}

//Equipement Form struct

struct PrivatifBainView : View {
    @State private var privatifBainOn = false
    
    var body: some View {
        Toggle(isOn: $privatifBainOn, label: {
            Text("Privatif")
        })
    }
}

struct PrivatifEauView : View {
    @State private var privatifEauOn = false
    
    var body: some View {
        Toggle(isOn: $privatifEauOn, label: {
            Text("Privatif")
        })
    }
}

struct WifiView : View {
    @State private var wifiOn = false
    
    var body: some View {
        Toggle(isOn: $wifiOn, label: {
            Text("Wi-fi")
        })
    }
}

struct EthernetView : View {
    @State private var ethernetOn = false
    
    var body: some View {
        Toggle(isOn: $ethernetOn, label: {
            Text("Connexion Ethernet")
        })
    }
}

struct BureauView : View {
    @State private var bureauOn = false
    
    var body: some View {
        Toggle(isOn: $bureauOn, label: {
            Text("Bureau")
        })
    }
}

struct FrigidaireView : View {
    @State private var frigidaireOn = false
    
    var body: some View {
        Toggle(isOn: $frigidaireOn, label: {
            Text("Frigidaire")
        })
    }
}

struct FreezerView : View {
    @State private var freezerOn = false
    
    var body: some View {
        Toggle(isOn: $freezerOn, label: {
            Text("Freezer")
        })
    }
}

struct CongelateurView : View {
    @State private var congelateurOn = false
    
    var body: some View {
        Toggle(isOn: $congelateurOn, label: {
            Text("Congélateur")
        })
    }
}

struct FourView : View {
    @State private var fourOn = false
    
    var body: some View {
        Toggle(isOn: $fourOn, label: {
            Text("Four")
        })
    }
}

struct MicroOndeView : View {
    @State private var microOndeOn = false
    
    var body: some View {
        Toggle(isOn: $microOndeOn, label: {
            Text("Four à micro-onde")
        })
    }
}

struct BouilloireView : View {
    @State private var bouilloireOn = false
    
    var body: some View {
        Toggle(isOn: $bouilloireOn, label: {
            Text("Bouilloire")
        })
    }
}

struct ServiceView : View {
    @State private var serviceOn = false
    
    var body: some View {
        Toggle(isOn: $serviceOn, label: {
            Text("Room Service")
        })
    }
}

//Pickers struct
//
//struct ChambresView: View {
//    @State private var chambresSelection: String = ""
//
//    var body: some View {
//        Picker(
//        selection: $chambresSelection,
//        label: Text("\(chambresSelection) Chambres"),
//        content: {
//            ForEach(0..<100) { number in
//                Text("\(number)")
//                .font(.title)
//                .foregroundColor(.black)
//                .tag("\(number)")
//                      }
//          }
//      )
//}
//}
//
//struct LitsView: View {
//    @State private var litsSelection: String = ""
//
//    var body: some View {
//        Picker(
//        selection: $litsSelection,
//        label: Text("\(litsSelection) Lits"),
//        content: {
//            ForEach(0..<100) { number in
//                Text("\(number)")
//                .font(.title)
//                .foregroundColor(.black)
//                .tag("\(number)")
//                      }
//          }
//      )
//}
//}
//}
