import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-home"
export default class extends Controller {
  static targets = ["icons"]
  toggle() {
    this.iconsTarget.classList.toggle("d-none")
  }
}
