//
//  CategoryItemView.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/18.
//

import SwiftUI

struct CategoryItemView: View {
  //MARK: - Properties
  
  let category: Category
  
  //MARK: - Body
  var body: some View {
    Button {
      //action
    } label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundColor(.gray)
        
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundColor(.gray)
        
        Spacer()
      } //: HStack
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
      )
    } //: Button

  }
}

//MARK: - Preview
struct CategoryItemView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryItemView(category: categories[0])
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
