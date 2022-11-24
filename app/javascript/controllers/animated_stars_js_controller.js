import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="animated-stars-js"
export default class extends Controller {
  connect() {

    const STARSNUM = 800;
    const SPEED = 2;
    const windowW = window.innerWidth;
    const windowH = document.body.offsetHeight;

    for (let i = 0; i < STARSNUM; i++) {
      const size = Math.floor((Math.random() * 2) + 2);
      const animDur = Math.floor((Math.random() * 10) + 4) / (SPEED / 2);
      const posX = Math.floor((Math.random() * windowW) + 1);
      const posY = Math.floor((Math.random() * windowH) + 1);

      const randomAnimDuration = [
        '-webkit-animation-duration: ' + animDur + 's;',
        '-moz-animation-duration: ' + animDur + 's;',
        '-ms-animation-duration: ' + animDur + 's;',
        '-o-animation-duration: ' + animDur + 's;',
        'animation-duration: ' + animDur + 's;'
      ].join('');

      const style = 'width: ' + size + 'px; height: ' + size + 'px; left: ' + posX + 'px; top: ' + posY + 'px;' + randomAnimDuration;

      this.element.insertAdjacentHTML("afterbegin", `<div class="star" style="${style}"></div>`);
    }
  }
}
