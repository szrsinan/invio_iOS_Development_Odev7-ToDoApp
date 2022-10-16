//
//  IsKayitVC.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import UIKit

class IsKayitVC: UIViewController {

    @IBOutlet weak var yapilacakIs: UITextField!
    
    var isKayitPresenterNesnesi:ViewToPresenterIsKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IsKayitRouter.createModule(ref: self)
    }
    
    @IBAction func buttonEkle(_ sender: Any) {
        if let ia = yapilacakIs.text {
            isKayitPresenterNesnesi?.ekle(yapilacak_is: ia)
        }
    }
}
