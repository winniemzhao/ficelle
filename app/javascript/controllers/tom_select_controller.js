import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

export default class extends Controller {

  static values = { options: Object }

  connect() {
    this.#select()
    document.getElementById('event_inspo_id-ts-control').remove
  }

  #select() {
    console.log('hi from selector')
    new TomSelect("#event_inspo_id",{
      persist: false,
      createOnBlur: true,
      create: false,
      sortField: {
        field: "name",
        direction: "desc"
      }
    });
  }
}
