//
//  Game.swift
//  TicTacToe
//
//  Created by 2019_DEV_198 on 29/09/2019.
//  Copyright © 2019 2019_DEV_198. All rights reserved.
//

import Foundation

struct Game {
    static let width = 3
    static let height = 3
    static var size = Game.width * Game.height
    static let win = 3
    
    private let moves: [Move]
    private let gameWinner: Player?
    
    init() {
        moves = []
        gameWinner = nil
    }
    
    init(moves: [Move]) {
        self.moves = moves
        gameWinner = nil
    }
}

extension Game: GameProtocol {
    var winner: Player? {
        return gameWinner
    }
    
    var isComplete: Bool {
        return false
    }
    
    func add(move: Move) -> Game {
        return self
    }
}
