import { Directive, ElementRef, OnInit } from '@angular/core';
import Swiper from 'swiper';

@Directive({
  selector: '[swiper]'
})
export class SwiperDirective implements OnInit {
  constructor(private elementRef: ElementRef) {}

  ngOnInit() {
    const swiper = new Swiper(this.elementRef.nativeElement, {
      // Options de configuration du carrousel
    });
  }
}

