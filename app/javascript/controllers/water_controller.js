import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="water"
export default class extends Controller {
  static targets = ["water05", "water1", "water15", "water2"]

  waterRise05() {
    this.water05Target.classList.add('fill');
    const waterValue = parseFloat(this.water05Target.getAttribute('value'));
    console.log(waterValue);
  }

  waterRise1() {
    this.water1Target.classList.add('fill');
    const waterValue = parseFloat(this.water1Target.getAttribute('value'));
    console.log(`Water value: ${waterValue} liters`);
  }

  waterRise15() {
    this.water15Target.classList.add('fill');
    const waterValue = parseFloat(this.water15Target.getAttribute('value'));
    console.log(`Water value: ${waterValue} liters`);
  }

  waterRise2() {
    this.water2Target.classList.add('fill');
    const waterValue = parseFloat(this.water2Target.getAttribute('value'));
    console.log(`Water value: ${waterValue} liters`);
  }
}
