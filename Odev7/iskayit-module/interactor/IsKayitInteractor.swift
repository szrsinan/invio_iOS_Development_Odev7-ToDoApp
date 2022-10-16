//
//  IsKayitInteractor.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class IsKayitInteractor : PresenterToInteractorIsKayitProtocol {
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func isEkle(yapilacak_is: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO isler (yapilacak_is) VALUES (?)", values: [yapilacak_is])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
