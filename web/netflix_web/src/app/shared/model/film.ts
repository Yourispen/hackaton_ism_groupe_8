import { Acteur } from './acteur';
export interface Film {
    id:number
    nom:string
    photo:string
    date:string
    recomandation:string
    categorie:string

    acteurs:Acteur[]|null
}