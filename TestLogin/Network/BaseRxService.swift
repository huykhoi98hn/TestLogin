//
//  BaseRxRequest.swift
//  UnitelSDK
//
//  Created by admin on 1/15/21.
//

import Foundation
import RxAlamofire
import RxSwift
import Alamofire
import ObjectMapper

class BaseRxService {
    let disposeBag = DisposeBag()
    let session = Session.default
    
    func request<T: Mappable>(type:T.Type, method:HTTPMethod = .get, url: String, parameters: ([String: String])? = nil, encoding: ParameterEncoding = JSONEncoding.default) -> Observable<T> {
        return Observable.create { (observer) -> Disposable in
            self.session
                .rx
                .responseJSON(method, url, parameters: parameters, encoding: encoding)
                .subscribe(onNext: { (response, data) in
                    if let data = data as? [String : Any],
                        let parseData = MVBaseContainerObject<T>(JSON: data),
                        parseData.result > 0,
                        let object = parseData.data {
                        observer.onNext(object)
                    } else {
                        observer.onError(ApiError(errorCode: -1, message: ""))
                    }
                    
                }, onError: { err in
                    observer.onError(ApiError(errorCode: -1, message: err.localizedDescription))
                }, onCompleted: {
                    observer.onCompleted()
                })
                .disposed(by: self.disposeBag)
            return Disposables.create()
        }
   }
}
