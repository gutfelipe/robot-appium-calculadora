*** Settings ***
Library     ../utils/dynamic_element.py

*** Keywords ***
click button "${NUM1}"
    ${COUNT} =  dynamic_element.Get Count Size  ${NUM1}  

    IF  ${COUNT} > 1
        ${LIST_LOCATOR} =    dynamic_element.Get List Locator Calculate   ${calculate_page}   ${NUM1}
        FOR    ${item}    IN    @{LIST_LOCATOR}
            Click Element    ${item}
        END 
    ELSE 
        ${LOCATOR} =    dynamic_element.Get Locator Calculate   ${calculate_page}   ${NUM1} 
        Click Element    ${LOCATOR}
    END



click sum
    Click Element    ${calculate_page.button_sum}

click equeals
    Click Element    ${calculate_page.button_equals}

check result "${RESULTADO_BDD}"
    ${text_screen} = 	 Get Text	${calculate_page.screen_result}
    ${text_normalize} =  dynamic_element.Normalize Result   ${text_screen}
    Should Be Equal  ${RESULTADO_BDD}  ${text_normalize}


click subtract
    Click Element    ${calculate_page.button_subtract}

click division
    Click Element    ${calculate_page.button_division}

click multiplication
    Click Element    ${calculate_page.button_multiplication}
