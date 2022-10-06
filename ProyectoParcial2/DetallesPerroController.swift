//
//  DetallesPerrosController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesPerroController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    var perro : Perro?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (perro?.datos.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDato") as! CeldaDatoController
        celda.lblTitulo.text = perro!.datos[indexPath.row].titulo
        celda.lblDesc.text = perro!.datos[indexPath.row].desc
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    @IBOutlet weak var imgPrincipal: UIImageView!
    @IBOutlet weak var lblAltura: UILabel!
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblPelaje: UILabel!
    @IBOutlet weak var lblOrigen: UILabel!
    @IBOutlet weak var lblEspe: UILabel!
    @IBOutlet weak var lblCaracter: UILabel!
    @IBOutlet weak var lblSabiasQue: UILabel!
    @IBOutlet weak var imgColor1: UIImageView!
    @IBOutlet weak var imgColor2: UIImageView!
    @IBOutlet weak var imgColor3: UIImageView!
    @IBOutlet weak var imgColor4: UIImageView!
    @IBOutlet weak var imgColor5: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if perro != nil{
            self.title = perro?.nombre
            imgPrincipal.image = UIImage(named: perro!.principal)
            lblAltura.text = perro?.altura
            lblPeso.text = perro?.peso
            lblPelaje.text = perro?.pelaje
            lblOrigen.text = perro?.altura
            lblCaracter.text = perro?.caracter
            lblSabiasQue.text = perro?.sabias
            imgColor1.image = UIImage(named: perro!.color1)
            imgColor2.image = UIImage(named: perro!.color2)
            imgColor3.image = UIImage(named: perro!.color3)
            imgColor4.image = UIImage(named: perro!.color4)
            imgColor5.image = UIImage(named: perro!.color5)
 
        }else{
        self.title = "Detalles de Perro"
        }
    }

}

