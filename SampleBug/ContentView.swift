//
//  ContentView.swift
//  SampleBug
//
//  Created by Lorenzo Boaro on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "figure.2.and.child.holdinghands")
                    Text("First Tab")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "list.star")
                    Text("Second Tab")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
