import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AccueilComponent } from './liste/accueil.component';

const routes: Routes = [
  { path: '', component: AccueilComponent },
  { path: 'accueil/', component: AccueilComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AccueilRoutingModule { }
