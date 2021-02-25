
ENTITY_DEFS = 
{
    ['player'] = 
    {
        walkSpeed = PLAYER_WALK_SPEED,
        animations = 
        {
            ['walk-left'] = 
            {
                frames = {5, 6, 7, 8},
                interval = 0.155,
                texture = 'character-walk'
            },
            ['walk-right'] = 
            {
                frames = {1, 2, 3, 4},
                interval = 0.15,
                texture = 'character-walk'
            },
            ['walk-down'] = 
            {
                frames = {9, 10, 11, 12},
                interval = 0.15,
                texture = 'character-walk'
            },
            ['walk-up'] = 
            {
                frames = {13, 14, 15, 16},
                interval = 0.15,
                texture = 'character-walk'
            },
            ['idle-left'] = 
            {
                frames = {5},
                texture = 'character-walk'
            },
            ['idle-right'] = 
            {
                frames = {1},
                texture = 'character-walk'
            },
            ['idle-down'] = 
            {
                frames = {9},
                texture = 'character-walk'
            },
            ['idle-up'] = 
            {
                frames = {13},
                texture = 'character-walk'
            },
            ['sword-left'] = 
            {
                frames = {7, 8, 9, 10, 11, 12},
                interval = 0.05,
                looping = false,
                texture = 'character-shootlf'
            },
            ['sword-right'] = 
            {
                frames = {1, 2, 3, 4, 5, 6},
                interval = 0.05,
                looping = false,
                texture = 'character-shootlf'
            },
            ['sword-down'] = 
            {
                frames = {1, 2, 3, 4, 5, 6},
                interval = 0.05,
                looping = false,
                texture = 'character-shootud'
            },
            ['sword-up'] = 
            {
                frames = {7, 8, 9, 10, 11, 12},
                interval = 0.05,
                looping = false,
                texture = 'character-shootud'
            },
            ['pot-pick-left'] = 
            {
                frames = {10, 11, 12},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-lift'
            },
            ['pot-pick-right'] = 
            {
                frames = {4, 5, 6},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-lift'
            },
            ['pot-pick-up'] = 
            {
                frames = {7, 8, 9},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-lift'
            },
            ['pot-pick-down'] = 
            {
                frames = {1, 2, 3},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-lift'
            },
            ['pot-walk-left'] = 
            {
                frames = {13, 14, 15, 16},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-walk-right'] = 
            {
                frames = {5, 6, 7, 8},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-walk-up'] = 
            {
                frames = {9, 10, 11, 12},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-walk-down'] = 
            {
                frames = {1, 2, 3, 4},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-idle-left'] = 
            {
                frames = {13},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-idle-right'] = 
            {
                frames = {5},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-idle-up'] = 
            {
                frames = {9},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            },
            ['pot-idle-down'] = 
            {
                frames = {1},
                interval = 0.1,
                looping = false,
                texture = 'character-pot-walk'
            }
        }
    },
    
    ['virus'] = 
    {
        texture = 'entities',
        animations = 
        {
            ['walk-left'] = 
            {
                frames = {1, 2},
                interval = 0.2
            },
            ['walk-right'] = 
            {
                frames = {1, 2},
                interval = 0.2
            },
            ['walk-down'] = 
            {
                frames = {1, 2},
                interval = 0.2
            },
            ['walk-up'] = 
            {
                frames = {1, 2},
                interval = 0.2
            },
            ['idle-left'] = 
            {
                frames = {1}
            },
            ['idle-right'] = 
            {
                frames = {1}
            },
            ['idle-down'] = 
            {
                frames = {1}
            },
            ['idle-up'] = 
            {
                frames = {1}
            }
        }
    },
}