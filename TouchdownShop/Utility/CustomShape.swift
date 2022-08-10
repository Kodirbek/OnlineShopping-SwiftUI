//
//  CustomShape.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/20.
//

import SwiftUI

struct CustomShape: Shape {
  //MARK: - Properties
  
  //MARK: - Body
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
    return Path(path.cgPath)
  }
}

//MARK: - Preview
struct CustomShape_Previews: PreviewProvider {
  static var previews: some View {
    CustomShape()
      .previewLayout(.fixed(width: 428, height: 120))
      .padding()
  }
}
