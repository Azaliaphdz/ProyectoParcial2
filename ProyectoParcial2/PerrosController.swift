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
    var dato5: [Dato] = []
    var dato6: [Dato] = []
    var dato7: [Dato] = []
    var dato8: [Dato] = []
    var dato9: [Dato] = []
    var dato10: [Dato] = []
    var dato11: [Dato] = []
    var dato12: [Dato] = []
    var dato13: [Dato] = []
    var dato14: [Dato] = []
    var dato15: [Dato] = []
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
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
        //celda.backgroundColor = .clear
        celda.imgIcono.image = UIImage(named: perros[indexPath.row].icono)
        //celda.imgIcono.layer.cornerRadius = 2
        //celda.imgIcono.layer.borderWidth = 2
        celda.imgIcono.layer.cornerRadius = celda.imgIcono.frame.size.width / 12
        celda.imgIcono.clipsToBounds = true
        //celda.imgIcono.layer.borderWidth = 2
        //celda.imgIcono.layer.borderColor = UIColor(red: 175/255, green: 255/255, blue: 253/255, alpha: 1).cgColor
        
       //celda.backgroundColor = UIColor.white
       //celda.layer.borderColor = UIColor.black.cgColor
        //celda.layer.borderWidth = 1
        celda.layer.cornerRadius = 8
        celda.clipsToBounds = true
        
        return celda
    }
    
    @IBOutlet weak var tvPerros: UITableView!
    
    var imgFondo = UIImageView(image: UIImage(named: "fondo2.jpg"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvPerros.backgroundView = imgFondo
        imgFondo.contentMode = UIView.ContentMode.scaleAspectFill
        
        //bulldog
        dato1.append(Dato(titulo: "Salud", desc: "Los problemas de salud más habituales de los bulldogs están relacionados con la forma plana de su cara, que puede provocar una obstrucción de las vías respiratorias y dificultades para respirar."))
        dato1.append(Dato(titulo: "Ejercicio", desc: "No ejercites al bulldog durante las horas de más calor del día. Lo más adecuado son dos paseos relativamente cortos y no demasiado vigorosos al día."))
        dato1.append(Dato(titulo: "Nutrición", desc: "La dieta de tu perro debe contener la proporción adecuada de todos los principales grupos de nutrientes. Además, deberá tener siempre agua fresca a su disposición."))
        dato1.append(Dato(titulo: "Aseo", desc: "El pelaje se peina con una manopla de goma para eliminar el pelo muerto y puede que debas limpiarle los pliegues de la piel."))
        dato1.append(Dato(titulo: "Historia", desc: "Los bulldogs proceden de los bullenbeissers, una raza antigua de perros tipo mastín usados para vigilancia y ataque contra animales salvajes en Asiria, Grecia, Egipto y Roma."))
        //chihuahua
        dato2.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato2.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato2.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato2.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato2.append(Dato(titulo: "Historia", desc: "Antaño había un perro pequeño, llamado techichi, que formó una parte importante de las culturas tolteca y azteca. Los techichis eran las mascotas de la gente adinerada y esos son los chihuahuas."))
        //corgi
        dato3.append(Dato(titulo: "Salud", desc: "El corgi galés de Pembroke suele ser una raza bastante sana y resistente. Sin embargo, al igual que muchas otras razas, puede sufrir trastornos oculares hereditarios y displasia de cadera."))
        dato3.append(Dato(titulo: "Ejercicio", desc: "Aunque tenga unas patitas muy cortas, el corgi galés de Pembroke se crio para guiar y arrear al ganado, por lo que derrocha fuerza y energía."))
        dato3.append(Dato(titulo: "Nutrición", desc: "La dieta de tu perro debe contener la proporción adecuada de todos los principales grupos de nutrientes. Además, deberá tener siempre agua fresca a su disposición."))
        dato3.append(Dato(titulo: "Aseo", desc: "El pelaje del corgi de Pembroke es de tamaño medio, liso e impermeable y con un manto inferior muy denso. Su pelaje necesita muy pocos cuidados."))
        dato3.append(Dato(titulo: "Historia", desc: "Se han hallado pruebas de la existencia del corgi galés de Pembroke en el Reino Unido desde, al menos, el año 920 d. C."))
        //dalmata
        dato4.append(Dato(titulo: "Salud", desc: "El problema de salud más frecuente en esta raza es la sordera, por lo que no está de más realizar pruebas auditivas desde una edad temprana. También tienen predisposición a cierto tipo de cálculos en la vejiga."))
        dato4.append(Dato(titulo: "Ejercicio", desc: "No conviene someter a demasiado ejercicio a los cachorros. Los dálmatas adultos son una raza de una resistencia increíble y pueden desplazarse a paso moderado de una forma casi indefinida."))
        dato4.append(Dato(titulo: "Nutrición", desc: "La dieta de tu perro debe contener la proporción adecuada de todos los principales grupos de nutrientes. Además, deberá tener siempre agua fresca a su disposición."))
        dato4.append(Dato(titulo: "Aseo", desc: "Como tiene un pelo corto y duro, el dálmata no necesita un aseo ni un corte complicados. Basta con peinarlo una vez a la semana con un guante para eliminar el pelo muerto y terminar con un paño suave para estimular el brillo."))
        dato4.append(Dato(titulo: "Historia", desc: "Es una raza antigua que se remonta al 2000 a. C., época en que ya aparecían perros moteados en frisos y tablillas griegos trabajando con carros en la antigua Grecia."))
        //golden retriever
        dato5.append(Dato(titulo: "Salud", desc: "Como sucede con muchas razas, el golden retriever puede sufrir diversos trastornos oculares hereditarios, displasia de cadera y codo (una enfermedad que puede provocar problemas de movilidad)."))
        dato5.append(Dato(titulo: "Ejercicio", desc: "Los golden adultos necesitan una cantidad razonable de ejercicio para mantenerse en óptimas condiciones. Si hacen demasiado ejercicio durante su etapa de cachorros pueden tener problemas óseos o de articulaciones."))
        dato5.append(Dato(titulo: "Nutrición", desc: "Los perros de razas grandes, además de tener un gran apetito, requieren un equilibrio de nutrientes diferente, incluyendo los minerales y las vitaminas, al de los perros de menor tamaño."))
        dato5.append(Dato(titulo: "Aseo", desc: "Dada la densidad del pelaje, deberás cepillar al golden con regularidad. El manto inferior, de tipo hidrófugo, es muy grueso y no hay que dejar que se enrede, ya que provocaría un sufrimiento."))
        dato5.append(Dato(titulo: "Historia", desc: "En 1908 empezó a ser registrado y exhibido con el nombre de golden de pelo liso. En 1913, su clasificación pasó a ser la de retriever dorado o amarillo."))
        //labrador retiever
        dato6.append(Dato(titulo: "Salud", desc: "Como sucede con muchas razas, el labrador puede sufrir diversos trastornos oculares hereditarios, displasia de cadera y codo (una enfermedad que puede provocar problemas de movilidad)."))
        dato6.append(Dato(titulo: "Ejercicio", desc: "El labrador se adapta muy bien a la cantidad de tiempo que puedas dedicarle a su ejercicio físico, pero recuerda que lo ideal para un adulto sano son un par de horas al día."))
        dato6.append(Dato(titulo: "Nutrición", desc: "Los perros de razas grandes, además de tener un gran apetito, requieren un equilibrio de nutrientes diferente, incluyendo los minerales y las vitaminas, al de los perros de menor tamaño."))
        dato6.append(Dato(titulo: "Aseo", desc: "Su pelaje no exige grandes cuidados. El pelaje es grueso y denso, con un manto inferior resistente al agua; bastará un cepillado semanal y un poco más de atención en época de muda."))
        dato6.append(Dato(titulo: "Historia", desc: "La raza no se originó en la península de Labrador, sino en las costas de Terranova en el siglo XVII. Se los entrenaba para llevar las redes a los pescadores a través de las aguas heladas."))
        //pastor aleman
        dato7.append(Dato(titulo: "Salud", desc: "El pastor alemán es propenso a varios problemas, como las enfermedades gastrointestinales, un trastorno estomacal denominado dilatación y torsión gástrica, una enfermedad de la médula espinal y epilepsia."))
        dato7.append(Dato(titulo: "Ejercicio", desc: "El perro joven debe hacer ejercicio con cuidado para evitar daños a largo plazo en las articulaciones, que aún estarán blandas y en formación."))
        dato7.append(Dato(titulo: "Nutrición", desc: "Los perros de razas grandes, además de tener un gran apetito, requieren un equilibrio de nutrientes diferente, incluyendo los minerales y las vitaminas, al de los perros de menor tamaño."))
        dato7.append(Dato(titulo: "Aseo", desc: "Necesita un cepillado vigoroso varias veces a la semana para eliminar todo el pelo muerto o suelto. Si se trata de un pastor alemán de pelo largo, también hay que peinarlo."))
        dato7.append(Dato(titulo: "Historia", desc: "Formado a partir de diferentes perros pastores, el pastor alemán se creó originalmente para el pastoreo y su origen puede rastrearse hasta el siglo VII."))
        //pitbull
        dato8.append(Dato(titulo: "Salud", desc: "El pitbull es un perro robusto que rara vez enferma. Pero puede ser propenso a las alergias cutáneas o a la dermatitis. Erupción de granos, eccemas, picores, rojeces, hinchazones."))
        dato8.append(Dato(titulo: "Ejercicio", desc: "Lo mínimo que necesita correr un pitbull adulto o similar es entre 30 y 45 minutos diarios."))
        dato8.append(Dato(titulo: "Nutrición", desc: "Para que nuestro American Pit Bull Terrier desarrolle todo su potencial físico y cognitivo, debemos proporcionarle una alimentación completa y equilibrada, formulada específicamente por veterinarios."))
        dato8.append(Dato(titulo: "Aseo", desc: "El pitbull pierde muy poco pelo: su aseo es muy sencillo. Para un buen cuidado del pelaje es suficiente con un cepillado semanal. "))
        dato8.append(Dato(titulo: "Historia", desc: "El pitbull apareció en el siglo XIX. Es un cruce entre terriers y bulldogs. Se utilizaba para las peleas de perros, especialmente contra los toros."))
        //poodle
        dato9.append(Dato(titulo: "Salud", desc: "Los perros poodle también suelen padecer enfermedades de la piel. Son dolencias que se presentan comúnmente en los ejemplares de esta raza canina."))
        dato9.append(Dato(titulo: "Ejercicio", desc: "La mejor forma para educar a un poodle es utilizando premios comestibles, ya que la comida es un gran motivador para estos perros."))
        dato9.append(Dato(titulo: "Nutrición", desc: "Una dieta nutritiva para tu Poodle incluye una variedad de ingredientes, dentro de los que se pueden incluir alimentos básicos de importancia histórica como el pescado y las aves de corral junto con otras carnes."))
        dato9.append(Dato(titulo: "Aseo", desc: "El pelo es su mayor atractivo. Los perros que compiten en las exposiciones deben tener un corte específico, con zonas con un pelo extravagante junto con otras rasuradas."))
        dato9.append(Dato(titulo: "Historia", desc: "La palabra poodle (nombre que recibe en inglés) procede del alemán Pudel, que significa ‘charco’ o ‘salpicadura’."))
        //pug
        dato10.append(Dato(titulo: "Salud", desc: "Los problemas de salud más habituales de los carlinos están relacionados con la forma plana de su cara, que puede provocar una obstrucción de las vías respiratorias y dificultades para respirar."))
        dato10.append(Dato(titulo: "Ejercicio", desc: "El carlino solo necesita media hora de ejercicio diario, pero disfrutará pasando el día con su dueño y acompañándole a hacer recados."))
        dato10.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato10.append(Dato(titulo: "Aseo", desc: "El pelaje corto del carlino requiere poco mantenimiento; basta con un cepillado rápido una vez a la semana. Sin embargo, la arruga que tiene este perro por encima de la trufa deberá limpiarse a diario."))
        dato10.append(Dato(titulo: "Historia", desc: "Se cree que esta raza de historia vasta y distinguida tiene sus orígenes en China, antes de llegar a Europa acompañando a comerciantes de ese país y asentándose en Holanda antes del siglo XVI."))
        //rottweiler
        dato11.append(Dato(titulo: "Salud", desc: "Como otras razas de gran tamaño, los rottweilers pueden padecer una enfermedad específica del estómago (distensión y vólvulo gástrico), así como displasia de cadera (una enfermedad que puede provocar problemas de movilidad)."))
        dato11.append(Dato(titulo: "Ejercicio", desc: "El rottweiler necesita muchísimo ejercicio. Si no se le da, puede desarrollar problemas de comportamiento de todo tipo."))
        dato11.append(Dato(titulo: "Nutrición", desc: "Los perros de razas grandes, además de tener un gran apetito, requieren un equilibrio de nutrientes diferente, incluyendo los minerales y las vitaminas, al de los perros de menor tamaño."))
        dato11.append(Dato(titulo: "Aseo", desc: "Es una de las razas más fáciles de mantener, basta con un buen cepillado de vez en cuando con un guante de goma y algo más frecuente durante las épocas de muda."))
        dato11.append(Dato(titulo: "Historia", desc: "Los antepasados de esta raza podrían ser los perros que usaban las legiones romanas para guiar y proteger a su ganado cuando cruzaron los Alpes."))
        //salchicha
        dato12.append(Dato(titulo: "Salud", desc: "El problema de salud más común está relacionado con la forma de su cuerpo, que lo hace propenso a problemas de columna. Los problemas cardíacos también son relativamente comunes en esta raza."))
        dato12.append(Dato(titulo: "Ejercicio", desc: "Este perro necesita, como mínimo, media hora de ejercicio al día. Antes de dejarle suelto, hay que procurar que atienda bien cuando se le llame, ya que su instinto de caza puede impulsarle a seguir un rastro o a una presa."))
        dato12.append(Dato(titulo: "Nutrición", desc: "Los perros de tamaño toy tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato12.append(Dato(titulo: "Aseo", desc: "No les hace falta mucho acicalamiento: hay que peinarlos con un guante de goma una vez a la semana para eliminar el pelo muerto."))
        dato12.append(Dato(titulo: "Historia", desc: "Se remontan al siglo XV en Alemania. Sin embargo, este tipo de perro aparece en obras artísticas del antiguo Egipto y de México"))
        //schnauzer
        dato13.append(Dato(titulo: "Salud", desc: "Los schnauzers miniatura suelen gozar de buena salud, aunque pueden padecer algunos problemas específicos de su raza, como niveles elevados de grasa en sangre, inflamación del páncreas, diabetes y piedras en la vejiga."))
        dato13.append(Dato(titulo: "Ejercicio", desc: "Un schnauzer miniatura adulto necesitará una hora diaria de ejercicio, por lo menos, e incluso más si se lo puedes ofrecer (es un perro muy flexibles y se adaptará sin problemas a la rutina familiar)."))
        dato13.append(Dato(titulo: "Nutrición", desc: "Los perros pequeños tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Con un estómago tan pequeño, esto implica que deben comer poco pero a menudo."))
        dato13.append(Dato(titulo: "Aseo", desc: "El pelaje del schnauzer miniatura es duro, áspero y corto, con un manto inferior tupido. Hay que cepillarle todo el pelaje al menos dos veces a la semana."))
        dato13.append(Dato(titulo: "Historia", desc: "Procede de un perro tipo pinscher mediano de pelo duro, presente en Baviera en el siglo XV, que se usaba para cazar ratones y desempeñar otras tareas del campo."))
        //siberian husky
        dato14.append(Dato(titulo: "Salud", desc: "La del husky siberiano suele ser una raza sana y resistente. Sin embargo, al igual que muchas otras razas, puede sufrir trastornos oculares hereditarios y, en ocasiones, displasia de cadera (una enfermedad que puede provocar problemas de movilidad)."))
        dato14.append(Dato(titulo: "Ejercicio", desc: "Esta raza necesita hacer mucho ejercicio, aunque deberá hacerlo en una zona segura y acotada, o con correa, ya que tienen muchas ganas de correr si se les deja sueltos y no suelen responder a la llamada de su dueño para volver."))
        dato14.append(Dato(titulo: "Nutrición", desc: "La dieta de tu perro debe contener la proporción adecuada de todos los principales grupos de nutrientes. Además, deberá tener siempre agua fresca a su disposición."))
        dato14.append(Dato(titulo: "Aseo", desc: "El aseo es bastante fácil: normalmente basta con peinarlo y cepillarlo bien dos o tres veces a la semana, aunque durante la época de muda deberás cepillarlo a diario."))
        dato14.append(Dato(titulo: "Historia", desc: "Esta raza ya la empleaban los chukchis, un pueblo paleosiberiano del río Kolyma (Siberia) en el siglo XIX. El carácter noble de esta raza podría atribuirse probablemente al magnífico cuidado que recibió por parte de los chukchis."))
        //yorkshire terrier
        dato15.append(Dato(titulo: "Salud", desc: "Los yorkshire terrier suelen tener una vida muy larga. Sin embargo, tienden a tener problemas oculares, a sufrir desplazamientos temporales de la rótula, a tener una enfermedad específica de los huesos de los muslos y piedras en la vejiga."))
        dato15.append(Dato(titulo: "Ejercicio", desc: "Para que el yorkshire esté sano y en forma, es imprescindible que haga ejercicio a diario. A los yorkshire les encanta caminar y trotarán kilómetros y kilómetros si lo dejas. A este perro le encantan los paseos cortos."))
        dato15.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo elevado, aunque como tienen un estómago pequeño deben comer poco pero a menudo."))
        dato15.append(Dato(titulo: "Aseo", desc: "Debes cepillarle el pelo a diario con un peine y un cepillo para eliminar todos los posibles nudos y enredos que se le hagan. Deberás deshacerle la coleta de la cabeza para cepillarlo bien y luego se la puedes volver a hacer."))
        dato15.append(Dato(titulo: "Historia", desc: "Se cree que unos pequeños terriers llegaron de la mano de los tejedores escoceses que emigraron desde Escocia hasta Yorkshire y Lancanshire en 1850."))
        
        
        //1
        perros.append(Perro(origen: "Reino Unido", nombre: "Bulldog frances", tamano: "Tamaño mediano", icono: "raza-bulldog", altura: "Entre 31 y 40 cm", peso: "Entre 23 a 25 kg.", pelaje: "Corto y firme", espe: "De 8 a 10 años", caracter: "Voluntarioso, dócil y amigable", sabias: "Puede necesitar entretamiento para vivir con otras mascotas", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-bulldog2", datos: dato1))
        //2
        perros.append(Perro(origen: "México", nombre: "Chihuahua", tamano: "Tamaño pequeño", icono: "raza-chihuahua", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-chihuahua2", datos: dato2))
        //3
        perros.append(Perro(origen: "Gran bretaña", nombre: "Corgi", tamano: "Tamaño pequeño", icono: "raza-corgi", altura: "Entre 15 y 23 cm", peso: "10 a 14 kg.", pelaje: "liso de longitud media e impermeable", espe: "De 12 a 15 años", caracter: "Extrovertido, amigable, tenaz, audaz, protector, Juguetón", sabias: "es un perro apto para dueños con experiencia", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-corgi2", datos: dato3))
        //4
        perros.append(Perro(origen: "Croacia", nombre: "Dálmata", tamano: "Tamaño grande", icono: "raza-dalmata", altura: "Entre 56 y 61 cm", peso: "16 a 32 kg.", pelaje: "corto, liso y brillante", espe: "De 10 a 13 años", caracter: "Extrovertido, amigable, inteligente, energético, y sensible", sabias: "El contorno del dálmata es cuadrado, lo que demuestra que son perros equilibrados, fuertes y musculosos. ", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-dalmata2", datos: dato4))
        //5
        perros.append(Perro(origen: "Reino Unido", nombre: "Golden retriever", tamano: "Tamaño grande", icono: "raza-golden", altura: "Entre 51 y 61 cm", peso: "25 a 34 kg.", pelaje: "Dorado y brillante de longitud media", espe: "De 10 a 12 años", caracter: "Amigable, inteligente, confiable, amable y confiado", sabias: "Se desplaza con un pasos largos y fuertes en un movimiento fluido y soberbio.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-golden2", datos: dato5))
        //6
        perros.append(Perro(origen: "Canadá", nombre: "Labrador retriever", tamano: "Tamaño grande", icono: "raza-labrador", altura: "Entre 57 y 62 cm", peso: "29 a 32 kg.", pelaje: "Corto y denso", espe: "De 10 a 12 años", caracter: "Extrovertido, apacible, inteligente, amable y confiado", sabias: "Su cola, parecida a la de las nutrias, es única.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-labrador2", datos: dato6))
        //7
        perros.append(Perro(origen: "México", nombre: "Pastor alemán", tamano: "Tamaño grande", icono: "raza-pastor", altura: "Entre 58 y 63 cm", peso: "30 a 36 kg.", pelaje: "Duro, áspero y lacio", espe: "De 9 a 13 años", caracter: "Obstinado, inteligente, leal, alerta, protector y valiente", sabias: "Le encanta aprender y presta mucha atención al adiestramiento.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-pastor2", datos: dato7))
        //8
        perros.append(Perro(origen: "Inglaterra", nombre: "Pitbull", tamano: "Tamaño grande", icono: "raza-pitbull", altura: "Entre 58 y 61 cm", peso: "15.9 a 27.2 kg.", pelaje: "Suave, fino y corto", espe: "De 8 a 15 años", caracter: "Obstinado, amigable, inteligente, cariñoso, leal y determinado.", sabias: "Tienen el carácter más equilibrado que la mayoría de las razas caninas.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-pitbull2", datos: dato8))
        //9
        perros.append(Perro(origen: "Francia y Alemania", nombre: "Poodle", tamano: "Tamaño mediano", icono: "raza-poodle", altura: "Entre 24 a 60 cm", peso: "6 a 31 kg.", pelaje: "Rizado", espe: "De 12 a 15 años", caracter: "Inteligente, alerta, activo, instintivo, y fiel", sabias: "Durante mucho tiempo fueron perros acróbatas.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-poodle2", datos: dato9))
        //10
        perros.append(Perro(origen: "China", nombre: "Pug", tamano: "Tamaño pequeño", icono: "raza-pug", altura: "Entre 25 y 30 cm", peso: "8 kg.", pelaje: "Suave, fino y corto", espe: "De 13 a 20 años", caracter: "simpático, listo, travieso, dócil, sociable, cariñoso, y amoroso", sabias: "Los monasterios budistas en el Tíbet tenían a los Pug como mascotas.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-pug2", datos: dato10))
        //11
        perros.append(Perro(origen: "Alemania", nombre: "Rottweiler", tamano: "Tamaño grande", icono: "raza-rottweiler", altura: "Entre 56 y 69 cm", peso: "35 a 60 kg.", pelaje: "Corto y liso", espe: "De 12 a 20 años", caracter: "Firme, devoto, alerta y buena naturaleza", sabias: "El Rottweiler es tal vez la raza más malinterpretada de todas, debido los papeles de animal feroz.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-rottweiler2", datos: dato11))
        //12
        perros.append(Perro(origen: "Alemania", nombre: "Salchicha", tamano: "Tamaño pequeño", icono: "raza-salchicha", altura: "Entre 20 y 23 cm", peso: "2 a 14 kg.", pelaje: "Corto y liso", espe: "De 12 a 16 años", caracter: "Listo, obstinado, devoto  vivaz", sabias: "Se caracterizan por tener una fuerte personalidad y por ser testarudos.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-salchicha2", datos: dato12))
        //13
        perros.append(Perro(origen: "Alemania", nombre: "Schnauzer", tamano: "Tamaño mediano", icono: "raza-schnauzer", altura: "Entre 30 y 36 cm", peso: "5 a 8.2 kg.", pelaje: "Dos capas", espe: "De 12 a 14 años", caracter: "Devoto, inteligente, vivaz, buena naturaleza y entrenable", sabias: "Se distinguen por ser melosos, juguetones y traviesos.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-schnauzer2", datos: dato13))
        //14
        perros.append(Perro(origen: "Siberia", nombre: "Siberian husky", tamano: "Tamaño grande", icono: "raza-siberian-husky", altura: "Entre 51 y 60 cm", peso: "16 a 27 kg.", pelaje: "Doble manto y longitud media", espe: "De 12 a 15 años", caracter: "Extrovertido, amigable, inteligente, alerta y gentil", sabias: "Es un perro de tamaño mediano cuyas proporciones insinúan un equilibrio perfecto entre potencia, velocidad y resistencia.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-siberian-husky2", datos: dato14))
        //15
        perros.append(Perro(origen: "Inglaterra", nombre: "Yorkshire terrier", tamano: "Tamaño pequeño", icono: "raza-yorkshire", altura: "Entre 18 y 23 cm", peso: "3.2 a 5 kg.", pelaje: "Largo y suave", espe: "De 13 a 16 años", caracter: "Inteligente, audaz, independiente, confiado y valiente", sabias: "Su nombre es el de una ciudad.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-yorkshire2", datos: dato15))
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPerroController
        destino.perro = perros[tvPerros.indexPathForSelectedRow!.row]
    }
}
