import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swipe-inspos"
export default class extends Controller {
  static targets = ["inspo"]

  currentIndex = 0

  connect() {
    this.inspoTarget.classList.remove("d-none")
  }

  revealNextCard() {
    console.log(this.inspoTargets.length)
    console.log(`index ${this.currentIndex}`)

    if (this.currentIndex == this.inspoTargets.length - 1) {
      // dont want to trigger this anyway
    } else {
      const currentCard = this.inspoTargets[this.currentIndex]
      currentCard.classList.add("d-none")
      const nextCard = this.inspoTargets[this.currentIndex += 1]
      nextCard.classList.remove("d-none")
    }
  }
}
