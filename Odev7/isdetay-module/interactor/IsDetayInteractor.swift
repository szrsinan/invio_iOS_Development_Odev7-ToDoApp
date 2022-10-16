//
//  IsDetayInteractor.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class IsDetayInteractor : PresenterToInteractorIsDetayProtocol{
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func isGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE isler SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [yapilacak_is, yapilacak_id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
