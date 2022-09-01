import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="display"
export default class extends Controller {
  static targets = ["role", "freelancer"];

  displayForm() {
    if (this.roleTarget.value === "freelancer") {
      this.freelancerTarget.classList.remove("d-none");
    } else {
      this.freelancerTarget.classList.add("d-none");
    }
  }
}
