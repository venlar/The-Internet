*** Variables ***
${URL}              #e.g. http://localhost:7080
${URL_NP}           #e.g. localhost:7080
${BROWSER}          #e.g. Firefox
${ADD_BUTTON}       xpath=//button[@onclick="addElement()"]
${REMOVE_BUTTON}    xpath=//button[@onclick="deleteElement()"]
${USERNAME_FIELD}   xpath=//input[@id="username"]
${PASSWORD_FIELD}   xpath=//input[@id="password"]
${LOGIN_BUTTON}     xpath=//button[@type="submit"]
${LOGOUT_BUTTON}    xpath=//a[contains(@href,"/logout")]