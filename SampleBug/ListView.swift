//
//  ListView.swift
//  SampleBug
//
//  Created by Lorenzo Boaro on 28/02/23.
//

import SwiftUI

struct ListView: View {
    @StateObject private var viewModel = ListViewModel()
    
    var body: some View {
        switch viewModel.viewState {
        case .idle:
            Color.clear
                .onAppear {
                    viewModel.addSnapshotListener()
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
