import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="display-second-question"
export default class extends Controller {
  static targets = ["display"];

  question() {
    this.displayTarget.classList.remove("d-none")
  }

  notQuestion () {
    this.displayTarget.classList.add("d-none")
  }
}
