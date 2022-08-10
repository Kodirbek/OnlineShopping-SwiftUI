//
//  QuantityFavoriteDetailView.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/20.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
  //MARK: - Properties
  
  @State private var counter: Int = 0
  
  //MARK: - Body
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Button(action: {
        if counter > 0 {
          feedback.impactOccurred()
          counter -= 1
        }
      }) {
        Image(systemName: "minus.circle")
      }
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button(action: {
        feedback.impactOccurred()
        counter += 1
      }) {
        Image(systemName: "plus.circle")
      }
      
      Spacer()
      
      Button(action: {
        feedback.impactOccurred()
      }) {
        Image(systemName: "heart.circle")
          .foregroundColor(.red)
      }
    } //: HStack
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}

//MARK: - Preview
struct QuantityFavoriteDetailView_Previews: PreviewProvider {
  static var previews: some View {
    QuantityFavoriteDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
