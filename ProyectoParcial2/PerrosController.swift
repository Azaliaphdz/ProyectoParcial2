//
//  PerrosController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PerrosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var perros: [Perro] = []
    var dato1: [Dato] = []
    var dato2: [Dato] = []
    var dato3: [Dato] = []
    var dato4: [Dato] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 111
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPerro") as! CeldaPerroController
        celda.lblOrigen.text = perros[indexPath.row].origen
        celda.lblNombre.text = perros[indexPath.row].nombre
        celda.lblTamano.text = perros[indexPath.row].tamano
        
        celda.imgIcono.image = UIImage(named: perros[indexPath.row].icono)
        
        return celda
    }
    @IBOutlet weak var tvPerros: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dato1.append(Dato(titulo: <#T##String#>, desc: <#T##String#>))
        
        perros.append(Perro(origen: "Origen de México", nombre: "Chihuahua", tamano: "tamaño pequeño", icono: "raza-chihuahua", datos: dato1))
        perros.append(Perro(origen: "Originario de Canada", nombre: "Labrador Retriever", tamano: "tamaño grande", icono: "raza-chihuahua", datos: dato2))
        perros.append(Perro(origen: "Originario de Alemania", nombre: "Pastor alemán", tamano: "tamaño grande", icono: "raza-chihuahua", datos: dato3))
        perros.append(Perro(origen: "Originario de Reino Unido", nombre: "Golden Retriever", tamano: "tamaño grande", icono: "raza-chihuahua", datos: dato4))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPerroController
        destino.perro = perros[tvPerros.indexPathForSelectedRow!.row]
    }
}
