import Route from "./Route.js";

//Définir ici les routes
export const allRoutes = [
    new Route ("/", "Accueil", "/pages/home.html"),
    new Route ("/habitats", "Les habitats", "/pages/habitats.html"),
    new Route ("/savane", "La savane", "/pages/savane.html"),
    new Route ("/connexion", "Connexion ", "/pages/connexion.html", "/js/auth/connexion.js", ["disconnected"]),
    new Route ("/homeAdmin", "Accueil Administrateur ", "/pages/admin/homeAdmin.html", ["admin"]),
    new Route ("/homeEmploye", "Accueil Employe ", "/pages/employe/homeEmploye.html", ["employe"]),
    new Route ("/homeVeto", "Accueil Vétérinaire ", "/pages/veterinaire/homeVeto.html", ["veto"]),

];


//Le titre s'affiche comme ceci: Route.titre - websitename
export const websiteName = "Zoo Arcadia";