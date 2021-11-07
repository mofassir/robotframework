*** Settings ***
Documentation      Robot Framework test script
Library            SSHLibrary

*** Variables ***
${host}            xxxxxx
${username}        admin
${password}        xxxxxx
${alias}           remote_host_1

*** Test Cases ***
Test SSH Connection
    Open Connection     ${host}        alias=${alias}
    Login               ${username}    ${password}    delay=5
    Sleep   5s
    Write   enable
    Write   show version
    Sleep   5s
    Write   show users
    Sleep   5s
    Close All Connections
