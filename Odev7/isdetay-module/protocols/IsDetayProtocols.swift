//
//  IsDetayProtocols.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

protocol ViewToPresenterIsDetayProtocol {
    var isDetayInteractor:PresenterToInteractorIsDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int, yapilacak_is:String)
}

protocol PresenterToInteractorIsDetayProtocol {
    func isGuncelle(yapilacak_id:Int, yapilacak_is:String)
}

protocol PresenterToRouterIsDetayProtocol {
    static func createModule(ref:IsDetayVC)
}
