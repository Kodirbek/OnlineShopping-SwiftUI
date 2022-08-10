//
//  CategoryModel.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/18.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
