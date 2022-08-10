//
//  LogoView.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/17.
//

import SwiftUI

struct LogoView: View {
  //MARK: - Properties
  
  
  //MARK: - Body
  var body: some View {
    HStack {
      Text("Touchdown".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.black)
      
      Image("logo-dark")
        .resizable()
        .scaledToFit()
        .frame(width: 30, height: 30, alignment: .center)
      
      
      Text("Shop".uppercased())
        .font(.title3)
        .fontWeight(.bold)
        .foregroundColor(.black)
    } //: HStack
  }
}

//MARK: - Preview

struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
