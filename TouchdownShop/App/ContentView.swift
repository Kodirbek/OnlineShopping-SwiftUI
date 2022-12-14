//
//  ContentView.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/15.
//

import SwiftUI

struct ContentView: View {
  //MARK: - Properties
  @EnvironmentObject var shop: Shop
  
  //MARK: - Body
  var body: some View {
    ZStack {
      if shop.showingProduct == false && shop.selectedProduct == nil {
        VStack(spacing: 0) {
          NavigationBar_View()
            .padding(.horizontal, 15)
            .padding(.bottom)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(.white)
            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
          
          ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 0) {
              FeaturedTabView()
                .frame(height: UIScreen.main.bounds.width / 1.475)
                .padding(.vertical, 20)
              
              CategoryGridView()
              
              TitleView(title: "Helmets")
              
              LazyVGrid(columns: gridLayout, spacing: 15) {
                ForEach(products) {product in
                  ProductItemView(product: product)
                    .onTapGesture {
                      feedback.impactOccurred()
                      withAnimation(.easeOut) {
                        shop.selectedProduct = product
                        shop.showingProduct = true
                      }
                    }
                } //: Loop
              } //: VGrid
              .padding(15)
              
              TitleView(title: "Brands")
              
              BrandGridView()
              
              FooterView()
                .padding(.horizontal)
            } //: VStack
          }) //: ScrollView
        } //: VStack
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
      } else {
        ProductDetailView()
      }
    } //: ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Shop())
  }
}
