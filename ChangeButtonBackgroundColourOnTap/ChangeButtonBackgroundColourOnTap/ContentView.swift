//
//  ContentView.swift
//  ChangeButtonBackgroundColourOnTap
//
//  Created by Javid Multani on 14/07/22.
//

import SwiftUI

struct CustomButton: View {

@State private var didTap:Bool = false
@State private var buttonBackColor:Color = .yellow
    var body: some View {
           Button(action: {

               //This changes colors to three different colors.
               //Just in case you wanted more than two colors.
                if (self.buttonBackColor == .yellow) {
                    self.buttonBackColor = .blue
                } else if self.buttonBackColor == .blue {
                    self.buttonBackColor = .green
                } else {
                    self.buttonBackColor = .yellow
                }

               //Same code using switch
               /*
                switch self.buttonBackColor {
                case .yellow:
                    self.buttonBackColor = .blue
                case .blue:
                    self.buttonBackColor = .green
                default:
                    self.buttonBackColor = .yellow
                }
                */
           }) {

           Text("My custom button")
                   .font(.system(size: 24))
                   .foregroundColor(Color.white)
                   .multilineTextAlignment(.center)
           }
           .frame(width: 300, height: 75, alignment: .center)
           .padding(.all, 20)
           .background(buttonBackColor)
       }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
