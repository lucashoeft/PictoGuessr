//
//  IconData.swift
//  PictoGuessr
//
//  Created by Lucas Hoeft on 19.08.18.
//  Copyright © 2018 Lucas Hoeft. All rights reserved.
//

import Foundation

struct iconData {
    let imageName: String
    let imageAnswerOne: namePair // always the correct one
    let imageAnswerTwo: namePair
    let imageAnswerThree: namePair
}

struct namePair {
    let imageID: String
    let imageDescription: String
}

let catalogNeu = [handyIcon, partyIcon]

let handyIcon = iconData(imageName: "Handy", imageAnswerOne: namePair(imageID: "Handy", imageDescription: "Handy"), imageAnswerTwo: namePair(imageID: "", imageDescription: "Notruf"), imageAnswerThree: namePair(imageID: "", imageDescription: "Telefonzelle"))

let partyIcon = iconData(imageName: "Party", imageAnswerOne: namePair(imageID: "", imageDescription: "Party ballert"), imageAnswerTwo: namePair(imageID: "Party", imageDescription: "Krankenhaus"), imageAnswerThree: namePair(imageID: "", imageDescription: "Medzidin"))
