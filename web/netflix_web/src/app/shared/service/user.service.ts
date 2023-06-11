import { Injectable } from '@angular/core';
import { User } from '../model/user';

@Injectable({
  providedIn: 'root'
})
export class UserService {
  i:number=0
  users:User[]=[]
  user:User|null=null
  constructor() { }
  getAllUsers(){
    for(this.i=1;this.i<=30;this.i++){
      this.users.push({
        id:this.i,
        nom:'user'+this.i,
        password:"1234",
        login:'email@email.com',
        photo:'https://paysage-glanois.ch/wp-content/uploads/2021/06/person-icon.png'
      }) 
    }
    return this.users
  }

  findUserById(id:number):User|undefined|null{
    return null
  }
  saveUser(user:User){

  }
  removeUserById(id:number){

  }


}
