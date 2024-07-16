import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="plans-toggle"
export default class extends Controller {
  static targets = ["togglableButton", "activitiesSection", "recipesSection", "alimentationCard", "sportCard"]


  loadActivities() {
    this.activitiesSectionTarget.classList.remove("d-none")
    this.recipesSectionTarget.classList.add("d-none")
    this.sportCardTarget.classList.remove("btn-white-grey")
    this.sportCardTarget.classList.add("btn-orange-mini")
    this.alimentationCardTarget.classList.remove("btn-orange-mini")
    this.alimentationCardTarget.classList.add("btn-white-grey")
  }

  loadRecipes() {
    this.recipesSectionTarget.classList.remove("d-none")
    this.activitiesSectionTarget.classList.add("d-none")
    this.alimentationCardTarget.classList.remove("btn-white-grey")
    this.alimentationCardTarget.classList.add("btn-orange-mini")
    this.sportCardTarget.classList.remove("btn-orange-mini")
    this.sportCardTarget.classList.add("btn-white-grey")
  }


}
