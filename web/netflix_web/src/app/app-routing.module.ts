import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
{ path: 'play', loadChildren: () => import('./front/play/play.module').then(m => m.PlayModule) },

{ path: 'connexion', loadChildren: () => import('./front/connexion/connexion.module').then(m => m.ConnexionModule) },

{ path: 'accueil', loadChildren: () => import('./front/accueil/accueil.module').then(m => m.AccueilModule) },
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
