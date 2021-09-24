//  Slider.swift
//  MyTravelProject
//
//  Created by olivierruiz on 16/09/2021.
//

import SwiftUI

struct BudgetView: View {
    // define min & max value
    @Binding var minValue: Float
    @Binding var maxValue: Float
    var costMax = 10_000
    var costMin = 0

    var minValueFormatted: CGFloat {
        return (CGFloat(self.minValue) / (UIScreen.main.bounds.width - 50)) * 100
    }

    var maxValueFormatted: CGFloat {
        return (CGFloat(self.maxValue) / (UIScreen.main.bounds.width - 50)) * 100
    }
//    func name(paramValueMin:Float, ) -> CGFloat {
//        return CGFloat(paramValueMin) / (UIScreen.main.bounds.width - 50)) * 100)
//    }

    
    var body: some View {
        // setup slider view
        VStack { //Main VStack
            Text("Sélectionnez votre budget minimum et maximum ")
                .foregroundColor(.gray)
                .padding()
            
            HStack {

                Spacer()
//                Min Value
                Text(String(format: "%.0f", minValueFormatted))
                    .foregroundColor(Color.black)
                    .padding(5)
                
                Spacer()
//                Max Value
                Text(String(format: "%.0f", maxValueFormatted))
                    .foregroundColor(Color.black)
                    .padding(5)
                Spacer()
            } // End HStack

            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
//      BackgroundHorizontalBar
                Capsule()
                    .fill(Color.gray.opacity(10))
                    .frame(width: CGFloat((UIScreen.main.bounds.width - 50) + 10), height: 5)
//      ForegroundHorizontalBar
                Capsule()
                    .fill(Color("myblue"))
                    .offset(x: CGFloat(self.minValue))
                    .frame(width: CGFloat((self.maxValue) - self.minValue), height: 20)
//      MinHead

                Circle()
                    .fill(Color("myblue"))
                    .frame(width: 30, height: 30)
                    .background(Circle().stroke(Color.white, lineWidth: 5))
                    .offset(x: CGFloat(self.minValue))
                    .gesture(DragGesture().onChanged({ (value) in
                        if value.location.x > 8 && value.location.x <= (UIScreen.main.bounds.width - 50) &&
                            value.location.x < CGFloat(self.maxValue - 30)
                        {
                            persoChosen.budgetMin = Float(minValueFormatted)
                            self.minValue = Float(value.location.x - 8)
                        }
                    }))

                Circle()
                    .fill(Color("myblue"))
                    .frame(width: 30, height: 30)
                    .background(Circle().stroke(Color.white, lineWidth: 0))
                    .offset(x: CGFloat(self.maxValue - 18))
                    .gesture(DragGesture().onChanged({ (value) in
                        if value.location.x - 8 <= (UIScreen.main.bounds.width - 50) && value.location.x > CGFloat(self.minValue + 50) {
                            persoChosen.budgetMax = Float(maxValueFormatted)
                            self.maxValue = Float(value.location.x - 8)
                        }
                    }))
            }) // End ZStack
            .padding()
            
        } // End Main VStack
    }
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetView(minValue: .constant(0.0), maxValue: .constant(0.0))
    }
}

