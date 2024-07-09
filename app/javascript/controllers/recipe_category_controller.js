import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recipe-category"
export default class extends Controller {
  static targets = ["petitdej", "dej", "diner", "petitdejSection", "dejSection", "dinerSection"]

  loadPetitdej() {
    this.petitdejSectionTarget.classList.remove("d-none")
    this.dejSectionTarget.classList.add("d-none")
    this.dinerSectionTarget.classList.add("d-none")
    this.petitdejTarget.classList.remove("btn-white-grey")
    this.petitdejTarget.classList.add("btn-orange-mini")
    this.dejTarget.classList.remove("btn-orange-mini")
    this.dejTarget.classList.add("btn-white-grey")
    this.dinerTarget.classList.remove("btn-orange-mini")
    this.dinerTarget.classList.add("btn-white-grey")
  }

  loadDej() {
    this.dejSectionTarget.classList.remove("d-none")
    this.petitdejSectionTarget.classList.add("d-none")
    this.dinerSectionTarget.classList.add("d-none")
    this.dejTarget.classList.remove("btn-white-grey")
    this.dejTarget.classList.add("btn-orange-mini")
    this.petitdejTarget.classList.remove("btn-orange-mini")
    this.petitdejTarget.classList.add("btn-white-grey")
    this.dinerTarget.classList.remove("btn-orange-mini")
    this.dinerTarget.classList.add("btn-white-grey")
  }

  loadDiner() {
    this.dinerSectionTarget.classList.remove("d-none")
    this.dejSectionTarget.classList.add("d-none")
    this.petitdejSectionTarget.classList.add("d-none")
    this.dinerTarget.classList.remove("btn-white-grey")
    this.dinerTarget.classList.add("btn-orange-mini")
    this.dejTarget.classList.remove("btn-orange-mini")
    this.dejTarget.classList.add("btn-white-grey")
    this.petitdejTarget.classList.remove("btn-orange-mini")
    this.petitdejTarget.classList.add("btn-white-grey")
  }

}
