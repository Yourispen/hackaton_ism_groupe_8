import { Component } from '@angular/core';
import { User } from 'src/app/shared/model/user';
import { Router } from '@angular/router';
import { UserService } from '../../../shared/service/user.service';

@Component({
  selector: 'app-connexion',
  templateUrl: './connexion.component.html',
  styleUrls: ['./connexion.component.css']
})
export class ConnexionComponent {
  User:User[]=[]
  

  constructor(private router:Router,private userService:UserService){}


  formUser:User={
    id:0,
    nom:"exemple",
    login:"login",
    photo:"https://drive.google.com/file/d/1-DeJtItdxWbb2FwfN0dCTlfYAh_k6Tex/view?usp=share_link",
    password:"1234"
  }

  goToAcceuil(login:string,password:string){
    for (let u of this.userService.getAllUsers()){
      if (u.login==login && u.password==password) {
        this.router.navigate(["accueil/"])
      }
      else{ continue }
    }
    
  }
}
