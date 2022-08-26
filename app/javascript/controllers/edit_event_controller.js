import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-event"
export default class extends Controller {
  static targets = ["pending", "confirmed", "completed", "edit", "show"]

  connect() {
    console.log("all pending targets", this.pendingTargets)
    console.log("all confirmed targets", this.confirmedTargets)
    console.log("all completed targets", this.completedTargets)
    console.log("all edit targets",this.editTargets)
    console.log("all show targets",this.showTargets)
  }

  revealEdit() {
    console.log("click to edit")
    console.log(this.pendingTarget)
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
