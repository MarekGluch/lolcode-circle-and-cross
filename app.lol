HAI 1.2
    CAN HAS STDIO?

    I HAS A MESSAGES ITZ A BUKKIT
    MESSAGES HAS A SELECT_FIELD ITZ "Please select a field"
    MESSAGES HAS A FIELD_NOT_EXIST ITZ "Please select a correctly field"
    MESSAGES HAS A FIELD_IS_TAKEN ITZ "This field is taken"
    MESSAGES HAS A PLAYER_WIN ITZ "Player x win !!!"

    I HAS A FIELD_TYPES ITZ A BUKKIT
    FIELD_TYPES HAS A CIRCLE ITZ "o"
    FIELD_TYPES HAS A CROSS ITZ "x"
    FIELD_TYPES HAS A EMPTY ITZ " "

    I HAS A board ITZ A BUKKIT
    board HAS A r0c0 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r0c1 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r0c2 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r1c0 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r1c1 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r1c2 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r2c0 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r2c1 ITZ FIELD_TYPES'Z EMPTY
    board HAS A r2c2 ITZ FIELD_TYPES'Z EMPTY

    I HAS A currentPlayer ITZ A YARN
    currentPlayer R FIELD_TYPES'Z CROSS

    HOW IZ I drowBoard YR board AN YR heading
        VISIBLE "\033[2J"
        VISIBLE heading
        VISIBLE SMOOSH " " board'Z r0c0 " | " board'Z r0c1 " | " board'Z r0c2 " " MKAY
        VISIBLE "---|---|---"
        VISIBLE SMOOSH " " board'Z r1c0 " | " board'Z r1c1 " | " board'Z r1c2 " " MKAY
        VISIBLE "---|---|---"
        VISIBLE SMOOSH " " board'Z r2c0 " | " board'Z r2c1 " | " board'Z r2c2 " " MKAY
    IF U SAY SO

    HOW IZ I getCorrectlyFieldValue YR field AN YR currentPlayer
        I HAS A result ITZ A BUKKIT
        result HAS A value ITZ A YARN
        result HAS A isCorrectlyAction ITZ A TROOF

        BOTH SAEM field AN FIELD_TYPES'Z EMPTY
        O RLY?
            YA RLY
                result'Z value R currentPlayer
                result'Z isCorrectlyAction R WIN
            NO WAI
                result'Z value R field
                result'Z isCorrectlyAction R FAIL
        OIC

        FOUND YR result
    IF U SAY SO

    HOW IZ I isWin YR board AN YR currentPlayer
        ALL OF BOTH SAEM board'Z r0c0 AN currentPlayer AN BOTH SAEM board'Z r0c1 AN currentPlayer AN BOTH SAEM board'Z r0c2 AN currentPlayer MKAY
        O RLY?
            YA RLY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z r1c0 AN currentPlayer AN BOTH SAEM board'Z r1c1 AN currentPlayer AN BOTH SAEM board'Z r1c2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z r2c0 AN currentPlayer AN BOTH SAEM board'Z r2c1 AN currentPlayer AN BOTH SAEM board'Z r2c2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z r0c0 AN currentPlayer AN BOTH SAEM board'Z r1c0 AN currentPlayer AN BOTH SAEM board'Z r2c0 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z r0c1 AN currentPlayer AN BOTH SAEM board'Z r1c1 AN currentPlayer AN BOTH SAEM board'Z r2c1 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE  ALL OF BOTH SAEM board'Z r0c2 AN currentPlayer AN BOTH SAEM board'Z r1c2 AN currentPlayer AN BOTH SAEM board'Z r2c2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE  ALL OF BOTH SAEM board'Z r0c0 AN currentPlayer AN BOTH SAEM board'Z r1c1 AN currentPlayer AN BOTH SAEM board'Z r2c2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE  ALL OF BOTH SAEM board'Z r0c2 AN currentPlayer AN BOTH SAEM board'Z r1c1 AN currentPlayer AN BOTH SAEM board'Z r2c0 AN currentPlayer MKAY
                FOUND YR WIN
            NO WAI
                FOUND YR FAIL
        OIC
    IF U SAY SO

    HOW IZ I gameRound YR board
        I HAS A selectedField ITZ A YARN
        I HAS A fieldData ITZ A BUKKIT
        fieldData HAS A isCorrectlyAction ITZ A TROOF
        fieldData'Z isCorrectlyAction R FAIL
        I IZ drowBoard YR board AN YR MESSAGES'Z SELECT_FIELD MKAY
        GIMMEH selectedField
        selectedField IS NOW A YARN

        selectedField, WTF?
            OMG "0.0"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r0c0 AN YR currentPlayer MKAY
                board'Z r0c0 R fieldData'Z value
                GTFO
            OMG "0.1"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r0c1 AN YR currentPlayer MKAY
                board'Z r0c1 R fieldData'Z value
                GTFO
            OMG "0.2"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r0c2 AN YR currentPlayer MKAY
                board'Z r0c2 R fieldData'Z value
                GTFO
            OMG "1.0"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r1c0 AN YR currentPlayer MKAY
                board'Z r1c0 R fieldData'Z value
                GTFO
            OMG "1.1"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r1c1 AN YR currentPlayer MKAY
                board'Z r1c1 R fieldData'Z value
                GTFO
            OMG "1.2"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r1c2 AN YR currentPlayer MKAY
                board'Z r1c2 R fieldData'Z value
                GTFO
            OMG "2.0"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r2c0 AN YR currentPlayer MKAY
                board'Z r2c0 R fieldData'Z value
                GTFO
            OMG "2.1"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r2c1 AN YR currentPlayer MKAY
                board'Z r2c1 R fieldData'Z value
                GTFO
            OMG "2.2"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z r2c2 AN YR currentPlayer MKAY
                board'Z r2c2 R fieldData'Z value
                GTFO
            OMGWTF
                VISIBLE MESSAGES'Z FIELD_NOT_EXIST
        OIC

        fieldData'Z isCorrectlyAction
        O RLY?
            YA RLY
                I IZ isWin YR board AN YR currentPlayer MKAY
                O RLY?
                    YA RLY
                        MESSAGES'Z PLAYER_WIN R SMOOSH "Player " currentPlayer " win !!!" MKAY
                        I IZ drowBoard YR board AN YR MESSAGES'Z PLAYER_WIN MKAY
                    NO WAI
                        BOTH SAEM currentPlayer AN FIELD_TYPES'Z CIRCLE
                        O RLY?
                            YA RLY
                                currentPlayer R FIELD_TYPES'Z CROSS
                            NO WAI
                                currentPlayer R FIELD_TYPES'Z CIRCLE
                        OIC
                        I IZ gameRound YR board MKAY
                OIC
            NO WAI
                VISIBLE MESSAGES'Z FIELD_IS_TAKEN
                I IZ gameRound YR board MKAY
        OIC
    IF U SAY SO

    I IZ gameRound YR board MKAY
KTHXBYE