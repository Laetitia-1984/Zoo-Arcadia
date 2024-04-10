export default class Route {
    constructor(url, title, pathHtml, pathJS = "", authorize) {
        this.url = url;
        this.title = title;
        this.pathHtml = pathHtml;
        this.pathJS = pathJS;
        this.authorize = authorize;
    }
}
/*
[] -> Tout le monde peut y accéder
["deconnecté"] -> Réservé aux utilisateurs déconnectés
["admin"] -> Réservé aux utilisateurs avec le rôle admin
["employe"] -> Réservé aux utilisateurs avec le rôle employe
["vétérinaire"] -> Réservé aux utilisateurs avec le rôle vétérinaire
["admin", "employe", "vétérinaire"] -> Réservés aux utilisateurs avec le rôle admin OU employe OU vétérinaire
*/