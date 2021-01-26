//
//  RealmHelper.swift
//  TestLogin
//
//  Created by NHK on 1/26/21.
//  Copyright © 2021 NHK. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHelper {
    var realm: Realm?
    static let shared = RealmHelper()
    init() {
        realm = try! Realm()
    }
    
    func save() {
        
//        let savedObject = realm.obje
    }
//    func obserse() {
//        let laps = realm.objects(Lap.self)
//
//        Observable.collection(from: laps)
//          .map {
//            laps in "\(laps.count) laps"
//          }
//          .subscribe(onNext: { text  in
//            print(text)
//          })
//    }
}
