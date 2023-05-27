import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ConnexionComponent } from './liste/connexion.component';

const routes: Routes = [
  { path: '', component: ConnexionComponent },
  { path: 'connecxion', component: ConnexionComponent },

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ConnexionRoutingModule { }
