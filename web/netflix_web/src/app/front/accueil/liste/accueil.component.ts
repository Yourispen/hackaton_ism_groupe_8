import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { FilmService } from '../../../shared/service/film.service';
import { Film } from 'src/app/shared/model/film';



@Component({
  selector: 'app-accueil',
  templateUrl: './accueil.component.html',
  styleUrls: ['./accueil.component.css']
})
export class AccueilComponent {

  tendanceActuelle:string[]=[];
  auCinema:string[]=[];
  arriveBientot:string[]=[];
  animation:string[]=[];
  
  allfilms:Film[]=[]
  constructor(private router:Router,private filmService:FilmService){
    this.allfilms=filmService.getAllFilm()
  }

  items: string[] = ["valeur1", "valeur2", "valeur3", "valeur4"];

  goToPlay(){
    this.router.navigate(["/play"])
  }

  

}
