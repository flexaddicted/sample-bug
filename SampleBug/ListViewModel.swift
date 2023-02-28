//
//  ViewModel.swift
//  SampleBug
//
//  Created by Lorenzo Boaro on 28/02/23.
//

import Foundation

enum ViewState<Value> {
    case idle
    case loading
    case finished(Value)
    case failed(Error)
}

final class ListViewModel: ObservableObject {
    @Published private(set) var viewState = ViewState<[NewsLetter]>.idle
    
    func addSnapshotListener() {
        self.viewState = .finished(NewsLetter.sample)
    }
}
