import { Injectable } from '@angular/core';
import { Acteur } from '../model/acteur';

@Injectable({
  providedIn: 'root'
})
export class ActeurService {
  i:number=0
  acteurs:Acteur[]=[]
  acteur:Acteur|null=null
  constructor() { }
  

  getAllActeur(): Acteur[] {
    for(this.i=1;this.i<=30;this.i++){
      this.acteurs.push({
        id:this.i,
        nom:'acteur'+this.i,
        personnage:'perso'+this.i,
        photo:'https://paysage-glanois.ch/wp-content/uploads/2021/06/person-icon.png'
      }) 
    }
    return this.acteurs
  }
  findActeurById(id:number):Acteur|undefined|null{
    return this.acteur
  }
  saveActeur(fActeur:Acteur){

  }
  removeActeurById(id:number){

  }
}
