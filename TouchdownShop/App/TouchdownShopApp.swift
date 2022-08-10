//
//  TouchdownShopApp.swift
//  TouchdownShop
//
//  Created by Abduqodir's MacPro on 2022/06/15.
//

import SwiftUI

@main
struct TouchdownShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(Shop())
        }
    }
}
