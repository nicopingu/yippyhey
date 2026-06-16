//
//  ObservableType+WithPrevious.swift
//  Yippy
//
//  Created by Nicolas Feschotte on 24/10/19.
//  Copyright © 2026 Nicolas Feschotte. All rights reserved.
//

import Foundation
import RxSwift

extension ObservableType {

    /// From: [https://stackoverflow.com/a/44243478](https://stackoverflow.com/a/44243478)
    func withPrevious(startWith first: Element) -> Observable<(Element, Element)> {
        return scan((first, first)) { ($0.1, $1) }.skip(1)
    }
}
