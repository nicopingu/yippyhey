//
//  ObservableType+WithPrevious.swift
//  Yippy
//
//  Original by Matt Davidson, fork by Nicolas Feschotte with Mistral AI
//

import Foundation
import RxSwift

extension ObservableType {

    /// From: [https://stackoverflow.com/a/44243478](https://stackoverflow.com/a/44243478)
    func withPrevious(startWith first: Element) -> Observable<(Element, Element)> {
        return scan((first, first)) { ($0.1, $1) }.skip(1)
    }
}
