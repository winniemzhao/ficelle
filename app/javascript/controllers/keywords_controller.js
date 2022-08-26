import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="keywords"
export default class extends Controller {
  static targets = ["partner_id", "cards"]
  connect() {
    console.log('Hello!')
  }

  toggle(event) {
    if (this.cardsTarget.classList.contains("keyword-outline")) {
      this.cardsTarget.classList.remove("keyword-outline");
    } else {
      this.cardsTarget.classList.add("keyword-outline");
      fetch(`/partners/${this.partner_idTarget.getAttribute("data-partner_id")}/preferences`, {
        method: "POST",
        body: { keyword_id: event.target.getAttribute("data-keyword_id") }
      })
    }
  }
}
