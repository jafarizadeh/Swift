//
//  HomeView.swift
//  DesignCodeiOS15
//
//  Created by Mehdi on 05/08/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            FeaturedItem()
        }
        .overlay( NavigationBar(title: "Featured") )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
