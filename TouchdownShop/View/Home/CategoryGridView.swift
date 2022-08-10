//
//  CategoryGridView.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/18.
//

import SwiftUI

struct CategoryGridView: View {
  //MARK: - Property
  
  //MARK: - Body
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
        Section(
          header: SectionView(rotateClockwise: false),
          footer: SectionView(rotateClockwise: true)
        ) {
          ForEach(categories) {category in
            CategoryItemView(category: category)
          } //: Section
        } //: Loop
      } //: Grid
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    } //: Scroll
  }
}

//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
