//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by florian kindt on 23/05/2019.
//  Copyright © 2019 captain web. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {
    
    @IBOutlet weak var vueFrameEtBounds: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad apellée")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        print("Frame -> : \(vueFrameEtBounds.frame)")
        print("Bounds -> : \(vueFrameEtBounds.bounds)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    

}
