import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="activity-category"
export default class extends Controller {
  connect() {
  }
  static targets = ["cardio", "muscu", "muscuSection", "cardioSection"]

  loadCardio() {
    this.cardioSectionTarget.classList.remove("d-none")
    this.muscuSectionTarget.classList.add("d-none")
    this.cardioTarget.classList.remove("btn-white-grey")
    this.cardioTarget.classList.add("btn-orange-mini")
    this.muscuTarget.classList.remove("btn-orange-mini")
    this.muscuTarget.classList.add("btn-white-grey")
  }

  loadMuscu() {
    this.muscuSectionTarget.classList.remove("d-none")
    this.cardioSectionTarget.classList.add("d-none")
    this.muscuTarget.classList.remove("btn-white-grey")
    this.muscuTarget.classList.add("btn-orange-mini")
    this.cardioTarget.classList.remove("btn-orange-mini")
    this.cardioTarget.classList.add("btn-white-grey")
  }

}
