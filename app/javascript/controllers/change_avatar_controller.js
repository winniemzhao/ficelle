import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-avatar"
export default class extends Controller {
  static targets = ["form"]

  connect() {
    // console.log("hello from change-avatar");
  }

  revealForm() {
    // console.log(this.formTarget);
    this.formTarget.classList.toggle("d-none");
  }
}
