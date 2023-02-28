//
//  FavoritesViewModel.swift
//  SampleBug
//
//  Created by Lorenzo Boaro on 28/02/23.
//

import Foundation

@MainActor
final class FavoritesViewModel: ObservableObject {
    @Published private(set) var viewState = ViewState<[NewsLetter]>.idle
    
    func fetchBookmarks() async {
        viewState = .finished(NewsLetter.sample)
    }
}
