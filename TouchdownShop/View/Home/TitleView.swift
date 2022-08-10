//
//  TitleView.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/20.
//

import SwiftUI

struct TitleView: View {
  //MARK: - Properties
  
  var title: String
  
  //MARK: - Body
  var body: some View {
    HStack {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.heavy)
      
      Spacer()
    } //: HStack
    .padding(.horizontal)
    .padding(.top, 15)
    .padding(.bottom, 10)
  }
}

//MARK: - Preview
struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView(title: "HELMET")
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
