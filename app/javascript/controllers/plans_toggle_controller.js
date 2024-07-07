import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="plans-toggle"
export default class extends Controller {
  static targets = ["togglableButton", "activitiesSection", "recipesSection", "foodIcon", "sportIcon", "alimentationCard", "sportCard"]

  connect() {

    console.log("Test")
  }


  loadActivities() {
    console.log("Hello from loadActivities !")
    this.activitiesSectionTarget.classList.remove("d-none")
    this.recipesSectionTarget.classList.add("d-none")
    this.foodIconTarget.classList.add("d-none")
    this.sportIconTarget.classList.remove("d-none")
    this.sportCardTarget.classList.remove("inactive-button")
    this.sportCardTarget.classList.add("active-button")
    this.alimentationCardTarget.classList.remove("active-button")
    this.alimentationCardTarget.classList.add("inactive-button")
  }

  loadRecipes() {
    console.log("Hello from loadRecipes !")
    this.recipesSectionTarget.classList.remove("d-none")
    this.activitiesSectionTarget.classList.add("d-none")
    this.sportIconTarget.classList.add("d-none")
    this.foodIconTarget.classList.remove("d-none")
    this.alimentationCardTarget.classList.remove("inactive-button")
    this.alimentationCardTarget.classList.add("active-button")
    this.sportCardTarget.classList.remove("active-button")
    this.sportCardTarget.classList.add("inactive-button")
  }


}
