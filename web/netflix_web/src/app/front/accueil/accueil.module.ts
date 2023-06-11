import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AccueilRoutingModule } from './accueil-routing.module';
import { AccueilComponent } from './liste/accueil.component';
import { SwiperDirective } from 'src/app/swiper.directive';


@NgModule({
  declarations: [
    AccueilComponent,
    SwiperDirective
  ],
  imports: [
    CommonModule,
    AccueilRoutingModule
  ]
})
export class AccueilModule { }
