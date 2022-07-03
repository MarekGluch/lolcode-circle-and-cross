HAI 1.2
    CAN HAS STDIO?

    I HAS A MESSAGES ITZ A BUKKIT
    MESSAGES HAS A CURRENT_PLAYER ITZ "Current player:"
    MESSAGES HAS A PROTIP ITZ "(type [row id].[cell id] like 1.1 or 3.2)"
    MESSAGES HAS A SELECT_FIELD ITZ "Please select a field"
    MESSAGES HAS A FIELD_NOT_EXIST ITZ "Please select a correctly field"
    MESSAGES HAS A FIELD_IS_TAKEN ITZ "This field is taken"
    MESSAGES HAS A PLAYER_WIN ITZ "Player x win !!!"

    I HAS A FIELD_TYPES ITZ A BUKKIT
    FIELD_TYPES HAS A CIRCLE ITZ "o"
    FIELD_TYPES HAS A CROSS ITZ "x"
    FIELD_TYPES HAS A EMPTY ITZ " "

    I HAS A board ITZ A BUKKIT
    board HAS A row0cell0 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row0cell1 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row0cell2 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row1cell0 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row1cell1 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row1cell2 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row2cell0 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row2cell1 ITZ FIELD_TYPES'Z EMPTY
    board HAS A row2cell2 ITZ FIELD_TYPES'Z EMPTY

    I HAS A currentPlayer ITZ A YARN
    currentPlayer R FIELD_TYPES'Z CROSS

    HOW IZ I drowBoard YR board AN YR heading
        I HAS A headingRow ITZ "..| 1 | 2 | 3 | :)"
        I HAS A firstRow ITZ SMOOSH "1 | " board'Z row0cell0 " | " board'Z row0cell1 " | " board'Z row0cell2 " | :)" MKAY
        I HAS A midleRow ITZ SMOOSH "2 | " board'Z row1cell0 " | " board'Z row1cell1 " | " board'Z row1cell2 " | :)" MKAY
        I HAS A lastRow ITZ SMOOSH "3 | " board'Z row2cell0 " | " board'Z row2cell1 " | " board'Z row2cell2 " | :)" MKAY
        I HAS A dividerRow ITZ "--|---|---|---| :)"
        VISIBLE SMOOSH headingRow dividerRow firstRow dividerRow midleRow dividerRow lastRow dividerRow MKAY
        VISIBLE SMOOSH heading " :)" MKAY
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
        ALL OF BOTH SAEM board'Z row0cell0 AN currentPlayer AN BOTH SAEM board'Z row0cell1 AN currentPlayer AN BOTH SAEM board'Z row0cell2 AN currentPlayer MKAY
        O RLY?
            YA RLY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z row1cell0 AN currentPlayer AN BOTH SAEM board'Z row1cell1 AN currentPlayer AN BOTH SAEM board'Z row1cell2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z row2cell0 AN currentPlayer AN BOTH SAEM board'Z row2cell1 AN currentPlayer AN BOTH SAEM board'Z row2cell2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z row0cell0 AN currentPlayer AN BOTH SAEM board'Z row1cell0 AN currentPlayer AN BOTH SAEM board'Z row2cell0 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE ALL OF BOTH SAEM board'Z row0cell1 AN currentPlayer AN BOTH SAEM board'Z row1cell1 AN currentPlayer AN BOTH SAEM board'Z row2cell1 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE  ALL OF BOTH SAEM board'Z row0cell2 AN currentPlayer AN BOTH SAEM board'Z row1cell2 AN currentPlayer AN BOTH SAEM board'Z row2cell2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE  ALL OF BOTH SAEM board'Z row0cell0 AN currentPlayer AN BOTH SAEM board'Z row1cell1 AN currentPlayer AN BOTH SAEM board'Z row2cell2 AN currentPlayer MKAY
                FOUND YR WIN
            MEBBE  ALL OF BOTH SAEM board'Z row0cell2 AN currentPlayer AN BOTH SAEM board'Z row1cell1 AN currentPlayer AN BOTH SAEM board'Z row2cell0 AN currentPlayer MKAY
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

        I HAS A heading ITZ SMOOSH MESSAGES'Z SELECT_FIELD " " MESSAGES'Z PROTIP " :) :)" MKAY

        VISIBLE SMOOSH MESSAGES'Z CURRENT_PLAYER " " currentPlayer MKAY
        I IZ drowBoard YR board AN YR heading MKAY

        GIMMEH selectedField
        selectedField IS NOW A YARN

        selectedField, WTF?
            OMG "1.1"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row0cell0 AN YR currentPlayer MKAY
                board'Z row0cell0 R fieldData'Z value
                GTFO
            OMG "1.2"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row0cell1 AN YR currentPlayer MKAY
                board'Z row0cell1 R fieldData'Z value
                GTFO
            OMG "1.3"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row0cell2 AN YR currentPlayer MKAY
                board'Z row0cell2 R fieldData'Z value
                GTFO
            OMG "2.1"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row1cell0 AN YR currentPlayer MKAY
                board'Z row1cell0 R fieldData'Z value
                GTFO
            OMG "2.2"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row1cell1 AN YR currentPlayer MKAY
                board'Z row1cell1 R fieldData'Z value
                GTFO
            OMG "2.3"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row1cell2 AN YR currentPlayer MKAY
                board'Z row1cell2 R fieldData'Z value
                GTFO
            OMG "3.1"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row2cell0 AN YR currentPlayer MKAY
                board'Z row2cell0 R fieldData'Z value
                GTFO
            OMG "3.2"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row2cell1 AN YR currentPlayer MKAY
                board'Z row2cell1 R fieldData'Z value
                GTFO
            OMG "3.3"
                fieldData R I IZ getCorrectlyFieldValue YR board'Z row2cell2 AN YR currentPlayer MKAY
                board'Z row2cell2 R fieldData'Z value
                GTFO
            OMGWTF
                VISIBLE SMOOSH MESSAGES'Z FIELD_NOT_EXIST " " MESSAGES'Z PROTIP MKAY
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