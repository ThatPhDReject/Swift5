//
//  Slider.swift
//  MyTravelProject
//
//  Created by Mélissa AZOMBO on 16/09/2021.
//

import SwiftUI
import UIKit

struct Slider: View {
    var body: some View {


        class ViewController: UIViewController {
          let rangeSlider = RangeSlider(frame: .zero)
          
          override func viewDidLoad() {
            super.viewDidLoad()
            
            rangeSlider.backgroundColor = .red
            view.addSubview(rangeSlider)
          }
          
          override func viewDidLayoutSubviews() {
            let margin: CGFloat = 20
            let width = view.bounds.width - 2 * margin
            let height: CGFloat = 30
            
            rangeSlider.frame = CGRect(x: 0, y: 0,
                                       width: width, height: height)
            rangeSlider.center = view.center
          }
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider()
    }
}
