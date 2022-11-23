import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Start your own adventure", "Pick one of our amazing spaceships", "And live an unforgettable experience!"],
      typeSpeed: 30,
      loop: true
    })
  }
}
