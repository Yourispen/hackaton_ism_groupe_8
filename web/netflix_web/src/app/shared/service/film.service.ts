import { Injectable } from '@angular/core';
import { Film } from '../model/film';
import { Acteur } from '../model/acteur';

@Injectable({
  providedIn: 'root'
})
export class FilmService {
  films:Film[]=[]
  film:Film|null=null
  i=0
  constructor() { }

  getAllFilm(): Film[] {
    for(this.i=1;this.i<=10;this.i++){
      this.films.push({
        id:this.i,
        nom:'film'+this.i,
        date:"12/03/200"+this.i,
        recomandation:"90%",
        categorie:"auCinema",
        photo:'https://paysage-glanois.ch/wp-content/uploads/2021/06/person-icon.png',
        acteurs:null
      })
    }
    
    return this.films
  }

  findFilmById(id:number):Film|undefined|null{
    return null
  }
  saveFilm(film:Film){

  }
  removeFilmById(id:number){

  }

  findAllFilmByCategorie(categorie:string):Film[]{
    for (let f of this.getAllFilm()) {
      if (f.categorie==categorie) {
        this.films.push(f)
      }
    }
    
    return this.films
  }
}
