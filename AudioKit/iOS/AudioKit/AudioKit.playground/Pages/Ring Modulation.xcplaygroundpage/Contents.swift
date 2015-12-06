//: [TOC](Table%20Of%20Contents) | [Previous](@previous) | [Next](@next)
//:
//: ---
//:
//: ## AKRingModulator
//: ### Add description
import XCPlayground
import AudioKit

let audiokit = AKManager.sharedInstance

let bundle = NSBundle.mainBundle()
let file = bundle.pathForResource("808loop", ofType: "wav")
let player = AKAudioPlayer(file!)
player.looping = true
let ringModulator = AKRingModulator(player)

//: Set the parameters of the ring modulator here
ringModulator.frequency1 = 200 // Hertz
ringModulator.frequency2 = 700 // Hertz
ringModulator.balance = 50 // Percent
ringModulator.mix = 50 // Percent

audiokit.audioOutput = ringModulator
audiokit.start()

player.play()

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

//: [TOC](Table%20Of%20Contents) | [Previous](@previous) | [Next](@next)
