import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swipe-inspos"
export default class extends Controller {
  static targets = ["inspo"]
  connect() {
    this.inspoTarget.classList.remove("d-none")
  }

  revealNextCard() {
    this.inspoTarget.classList.add("d-none")
   const index = parseInt(this.inspoTarget.dataset.index, 10)
   const nextCard = this.inspoTargets[index + 1]
   nextCard.classList.remove("d-none")
   console.log(currentTarget.parentNode)
  }
}
