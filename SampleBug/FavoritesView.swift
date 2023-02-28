//
//  FavoritesView.swift
//  SampleBug
//
//  Created by Lorenzo Boaro on 28/02/23.
//

import SwiftUI

struct FavoritesView: View {
    @StateObject private var viewModel = FavoritesViewModel()
    
    var body: some View {
        switch viewModel.viewState {
        case .idle:
            Color.clear
                .onAppear {
                    Task {
                        await viewModel.fetchBookmarks()
                    }
                }
        case .loading:
            Text("In progress")
        case .failed(let error):
            Text(error.localizedDescription)
        case .finished(let newsLetters):
            if newsLetters.isEmpty {
                Text("Empty results")
            } else {
                List(newsLetters) { newsLetter in
                    Text(newsLetter.title)
                }
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
