import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="keywords"
export default class extends Controller {
  static targets = ["cards"]
  connect() {
  }

  toggle(event) {
    event.preventDefault()
    if (this.element.classList.contains("keyword-outline")) {
      this.element.classList.remove("keyword-outline");
    } else {
      this.element.classList.add("keyword-outline");
      // fetch(this.cardsTarget.action, {
      //   method: "GET",
      //   url: path_to new_partner_preference_path
      // })
    }
  }

  send(event) {
    event.preventDefault()

    console.log("TODO: send request in AJAX")
  }
}
