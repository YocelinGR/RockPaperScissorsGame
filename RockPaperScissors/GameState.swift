import UIKit
import GameplayKit

let piedra = ":puñetazo:"
let papel = ":mano:"
let tijeras = ":v:"
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

enum GameState {
    case inicio, ganar, perder, empatar
    var gameState: String {
        switch self {
        case .inicio:
            return "inicio"
        case .ganar:
            return "Ganaste"
        case .perder:
            return "Perdiste"
        default:
            return "Empataste"
        }
    }
}

enum  Sign {
    case piedra, papel, tijeras
    var signType: String {
        switch self {
        case .piedra:
            return ":puñetazo:"
        case .papel:
            return ":mano:"
        default:
            return ":v:"
        }
    }
    func resolverJuego(computerSign: Sign) -> GameState {
        var state: GameState = GameState.inicio
        if computerSign == self {
            state = .empatar
        }
        switch computerSign {
        case .papel:
            if self == .piedra {
                state = .perder
            }
            else if self == .tijeras {
                state = .ganar
            }
        case .piedra:
            if self == .papel {
                state = .ganar
            }
            else if self == .tijeras {
                state = .perder
            }
        case .tijeras:
            if self == .piedra {
                state = .ganar
            }
            else if self == .papel {
                state = .perder
            }
        default:
            state = .inicio
        }
        return state
    }
}
func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .piedra
    } else if sign == 1 {
        return .papel
    } else {
        return .tijeras
    }
}
var randomEmoji = randomSign();
var userEmoji = Sign.tijeras
