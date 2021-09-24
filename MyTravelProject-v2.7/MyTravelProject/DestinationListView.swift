//
//  ContentView.swift
//  MyTravelProject
//
//  Created by Mounir SISSANI on 15/09/2021.
//

import SwiftUI

struct DestinationListView: View{
    
    @EnvironmentObject var modelData: ModelData

    var body: some View {

        List(modelData.results) { item in
            NavigationLink(
                destination: DestinationDetailView(result: item),
                label: {
                    DestinationRow(result: item)
                }).navigationTitle("Résultats")
                .navigationBarTitleDisplayMode(.inline)
                .ignoresSafeArea()
        }
    }
}

struct DestinationRow: View {
    var result: ResultTrip
    var body: some View {
        HStack {
            
            Image(result.image)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .scaledToFill()
                .padding(.all)
            
            VStack(alignment: .leading, spacing: 2.0) {
                Text(result.destination)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                Text("\(result.criteria1):  \(result.value1)")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                
                Text("\(result.criteria2):  \(result.value2)")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                
                Text("\(result.criteria3):  \(result.value3)")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                
                Text("matching \(String(format: "%.1f", result.matching)) %")
                    .font(.footnote)
                    .foregroundColor(.green)
                    .lineLimit(1)
            }
            Spacer()
            if result.isFavorite {
                Image(systemName:"heart.fill").foregroundColor(.red)
            }
        }
    }
}

struct DestinationListView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationListView()
            .environmentObject(ModelData())
            .previewDevice("iPhone 12 Pro")
    }
}
