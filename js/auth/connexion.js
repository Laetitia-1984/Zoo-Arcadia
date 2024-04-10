// Implémenter le JS de la page Connexion
const mailInput = document.getElementById("EmailInput");
const passwordInput = document.getElementById("PasswordInput");
const btnValidateConnexion = document.getElementById("btn-validation-connexion");

btnValidateConnexion.addEventListener("click", checkCredentials);

// Fonction permettant de valider tout le formulaire
function checkCredentials() {
    // Ici, il faudra appeler l'API pour vérifier les input en BDD
    if (mailInput.value == "jose@arcadia.com" && passwordInput.value == "Jose-1956") {

        //Récupérer le token
        const token  = "hkhkhkhkhkhkhkhkhkhkh";
        setToken(token);

        setCookie(RoleCookieName, "admin", 7);
        window.location.replace("/homeAdmin");
    }
    else {
        mailInput.classList.add("is-invalid");
        passwordInput.classList.add("is-invalid");
    }

    if (mailInput.value == "marie@arcadia.com" && passwordInput.value == "Marie-1956") {

        //Récupérer le token
        const token  = "azazazazazazaz";
        setToken(token);

        setCookie(RoleCookieName, "employe", 7);
        window.location.replace("/homeEmploye");
    }
    else {
        mailInput.classList.add("is-invalid");
        passwordInput.classList.add("is-invalid");
    }


}