import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-navbar"
export default class extends Controller {
  static targets = ["ihouse", "irecipes", "ilog", "iactivities"]

  house() {
    this.ihouseTarget.classList.add('i-orange');
    this.irecipesTarget.classList.remove('i-orange');
    this.iactivitiesTarget.classList.remove('i-orange');
    console.log(this.ihouseTarget)
  }

  recipes() {
    this.ihouseTarget.classList.remove('i-orange');
    this.irecipesTarget.classList.add('i-orange');
    this.iactivitiesTarget.classList.remove('i-orange');
  }

  plus() {
    this.ihouseTarget.classList.remove('i-orange');
    this.irecipesTarget.classList.remove('i-orange');
    this.iactivitiesTarget.classList.remove('i-orange');
  }

  activities() {
    this.ihouseTarget.classList.remove('i-orange');
    this.irecipesTarget.classList.remove('i-orange');
    this.iactivitiesTarget.classList.add('i-orange');
  }
}
