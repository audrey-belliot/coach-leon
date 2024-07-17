import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="activities-logs"
export default class extends Controller {
  static targets = ["activitiesHistory", "hideButton", "showButton" ]

  connect() {
    console.log("Hello from ActivitiesLogs Controller")
    console.log(this.loadLinkTarget.innerText)
  }

  loadOldActivities() {
    // Remove la classe d-none à la div qui contient l'historique
    this.activitiesHistoryTarget.classList.remove("d-none")
    // Ajouter la class d-none au button showButton
    this.showButtonTarget.classList.add("d-none")
    // Remove la class d-none au button hideHistory
    this.hideButtonTarget.classList.remove("d-none")
    }

  hideOldActivities() {
    // Ajouter la classe d-none à la div qui contient l'historique
    this.activitiesHistoryTarget.classList.add("d-none")
    // Remove la class d-none au button showHistory
    this.showButtonTarget.classList.remove("d-none")
    // Ajouter la class d-non au button hideHistory
    this.hideButtonTarget.classList.add("d-none")
  }

}
