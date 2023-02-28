//
//  Model.swift
//  SampleBug
//
//  Created by Lorenzo Boaro on 28/02/23.
//

import Foundation

struct NewsLetter: Identifiable {
    let id = UUID()
    let title: String
}

extension NewsLetter {
    static let sample = [NewsLetter(title: "Title 1"), NewsLetter(title: "Title 2"), NewsLetter(title: "Title 3"), NewsLetter(title: "Title 4")]
}
