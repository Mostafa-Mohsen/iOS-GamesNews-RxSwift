//
//  URLRequest+Extension.swift
//  RxNews
//
//  Created by User on 18/12/2022.
//

import Foundation
import RxSwift
import RxCocoa

class Requester {
    static func loadData(resource url: URL) -> Observable<Any> {
        return URLSession.shared.rx.json(url: url).asObservable()
    }
}
