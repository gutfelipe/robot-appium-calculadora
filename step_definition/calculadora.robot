*** Settings ***
Library     ../utils/dynamic_element.py

*** Keywords ***
I click in equeals
    click equeals


I check value is "${RESULT}"
    ${resultNormalized} =    dynamic_element.Normalize Result   ${RESULT} 
    check result "${resultNormalized}" 

that I set "${NUM}"
    click button "${NUM}"


#sum
that I put "${NUM1}" and click sum after in "${NUM2}"
    set suite variable    ${NUM1}
    click button "${NUM1}"
    click sum
    set suite variable    ${NUM2}
    click button "${NUM2}"


#subtract
that I put "${NUM1}" and click subtract after in "${NUM2}"
    set suite variable    ${NUM1}
    click button "${NUM1}"
    click subtract
    set suite variable    ${NUM2}
    click button "${NUM2}"


#division
that I put "${NUM1}" and click division after in "${NUM2}"
    set suite variable    ${NUM1}
    click button "${NUM1}"
    click division
    set suite variable    ${NUM2}
    click button "${NUM2}"


#multiplication
that I put "${NUM1}" and click multiplication after in "${NUM2}"
    set suite variable    ${NUM1}
    click button "${NUM1}"
    click multiplication
    set suite variable    ${NUM2}
    click button "${NUM2}"
