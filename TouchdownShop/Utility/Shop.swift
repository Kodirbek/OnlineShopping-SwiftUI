//
//  Shop.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/20.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}
