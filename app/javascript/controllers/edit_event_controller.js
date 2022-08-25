import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-event"
export default class extends Controller {
  static targets = ["pending", "confirmed", "completed", "edit", "show"]

  connect() {
    console.log("hello from stimulus")
    console.log(this.pendingTargets)
    console.log(this.confirmedTargets)
    console.log(this.completedTargets)
    console.log(this.editTargets)
    console.log(this.showTargets)
  }

  revealEdit() {
    console.log("click to edit")
    this.pendingTarget.classList.add("d-none")
    this.editTarget.classList.remove("d-none")
  }

  revealShowConfirmed() {
    console.log("click to show confirmed")
    this.confirmedTarget.classList.add("d-none")
    this.showTarget.classList.remove("d-none")
  }

  revealShowCompleted() {
    console.log("click to show completed")
    this.completedTarget.classList.add("d-none")
    this.showTarget.classList.remove("d-none")
  }

  hideEdit() {
    console.log("click to hide edit")
    this.pendingTarget.classList.remove("d-none")
    this.editTarget.classList.add("d-none")
  }

  hideShowConfirmed() {
    console.log("click to hide show confirmed")
    this.confirmedTarget.classList.remove("d-none")
    this.showTarget.classList.add("d-none")
  }

  hideShowCompleted() {
    console.log("click to hide show completed")
    this.completedTarget.classList.remove("d-none")
    this.showTarget.classList.add("d-none")
  }
}
