//
//  NavigationBar View.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/17.
//

import SwiftUI

struct NavigationBar_View: View {
  //MARK: - Properties
  
  @State private var isAnimated: Bool = false
  
  //MARK: - Body
  var body: some View {
    HStack {
      Button {
        // action
      } label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      } //: Button1
      
      Spacer()
      
      LogoView()
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0, y: isAnimated ? 0 : -25)
        .onAppear {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimated.toggle()
          }
        }
      
      Spacer()
      
      Button {
        // action
      } label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.black)
          
          Circle()
            .fill(.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x: 14, y: -10)
        } //: ZStack
      } //: Button2
      
    } //: HStack
  }
}


//MARK: - Preview
struct NavigationBar_View_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBar_View()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
