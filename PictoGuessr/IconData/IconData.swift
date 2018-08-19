//
//  IconData.swift
//  PictoGuessr
//
//  Created by Lucas Hoeft on 19.08.18.
//  Copyright © 2018 Lucas Hoeft. All rights reserved.
//

import Foundation

// default
var globalIcon: iconData = iconData(imageName: "", imageAnswerOne: namePair(imageID: "", imageDescription: ""), imageAnswerTwo: namePair(imageID: "", imageDescription: ""), imageAnswerThree: namePair(imageID: "", imageDescription: ""))

var globalIconIdentifier = 0

struct iconData {
    let imageName: String
    let imageAnswerOne: namePair
    let imageAnswerTwo: namePair
    let imageAnswerThree: namePair
}

struct namePair {
    let imageID: String // has to be the same like imageName if answer is correct
    let imageDescription: String
}

let catalogNeu = [handyIcon, abfallIcon, autodiebstahlIcon, fotoautomatIcon, einkaufennachtsIcon, bettelnverbotenIcon, badezimmerIcon, aussichtsterassenIcon, bankIcon, ersatzverkehrIcon]

var catalogNeuTemporary = catalogNeu

let handyIcon = iconData(imageName: "Handy", imageAnswerOne: namePair(imageID: "Handy", imageDescription: "Handy"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Notruf"), imageAnswerThree: namePair(imageID: "", imageDescription: "Telefonzelle"))

let abfallIcon = iconData(imageName: "Abfall", imageAnswerOne: namePair(imageID: "", imageDescription: "Bananen"), imageAnswerTwo: namePair(imageID: "Abfall", imageDescription: "Abfall"), imageAnswerThree: namePair(imageID: "", imageDescription: "Achtung Rutschgefahr"))

let autodiebstahlIcon = iconData(imageName: "Vorsicht_Autodiebstahl", imageAnswerOne: namePair(imageID: "Vorsicht_Autodiebstahl", imageDescription: "Vorsicht Autodiebstahl"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Parkverbot"), imageAnswerThree: namePair(imageID: "", imageDescription: "Carsharing"))

let fotoautomatIcon = iconData(imageName: "Fotoautomat", imageAnswerOne: namePair(imageID: "Fotoautomat", imageDescription: "Fotoautomat"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Erkennungsdienstliche Behandlung"), imageAnswerThree: namePair(imageID: "", imageDescription: "Solarium"))

let einkaufennachtsIcon = iconData(imageName: "EinkaufenNachts", imageAnswerOne: namePair(imageID: "", imageDescription: "Späti"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Einkaufswagen"), imageAnswerThree: namePair(imageID: "EinkaufenNachts", imageDescription: "Einkaufen nachts"))

let bettelnverbotenIcon = iconData(imageName: "Betteln_Verboten", imageAnswerOne: namePair(imageID: "", imageDescription: "Keine Barzahlung"), imageAnswerTwo: namePair(imageID: "Betteln_Verboten", imageDescription: "Betteln verboten"), imageAnswerThree: namePair(imageID: "", imageDescription: "Kein Münzwurf"))

let badezimmerIcon = iconData(imageName: "Badezimmer", imageAnswerOne: namePair(imageID: "Badezimmer", imageDescription: "Badezimmer"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Badewanne"), imageAnswerThree: namePair(imageID: "", imageDescription: "Waschgelegenheit"))

let aussichtsterassenIcon = iconData(imageName: "Aussichtsterassen", imageAnswerOne: namePair(imageID: "", imageDescription: "Planespotter"), imageAnswerTwo: namePair(imageID: "Aussichtsterassen", imageDescription: "Aussichtsterassen"), imageAnswerThree: namePair(imageID: "", imageDescription: "Abflüge"))

let bankIcon = iconData(imageName: "Bank", imageAnswerOne: namePair(imageID: "", imageDescription: "Kasse"), imageAnswerTwo: namePair(imageID: "", imageDescription: "nur Barzahlung"), imageAnswerThree: namePair(imageID: "Bank", imageDescription: "Bank"))

let ersatzverkehrIcon = iconData(imageName: "Ersatzverkehr", imageAnswerOne: namePair(imageID: "", imageDescription: "Alternative Route"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Umleitung"), imageAnswerThree: namePair(imageID: "Ersatzverkehr", imageDescription: "Ersatzverkehr"))
