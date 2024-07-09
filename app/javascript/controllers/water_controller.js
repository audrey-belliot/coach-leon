import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="water"
export default class extends Controller {
  static targets = ["water05", "water1", "water15", "water2", "inputwater"]

  waterRise05() {
    this.water05Target.classList.add('fill05');
    this.water1Target.classList.remove('fill1');
    this.water15Target.classList.remove('fill15');
    this.water2Target.classList.remove('fill2');
    const waterValue = parseFloat(this.water05Target.getAttribute('value'));
    this.inputwaterTarget.value = waterValue;
  }

  waterRise1() {
    this.water1Target.classList.add('fill1');
    this.water05Target.classList.remove('fill05');
    this.water2Target.classList.remove('fill2');
    this.water15Target.classList.remove('fill15');
    const waterValue = parseFloat(this.water1Target.getAttribute('value'));
    this.inputwaterTarget.value = waterValue;
  }

  waterRise15() {
    this.water15Target.classList.add('fill15');
    this.water1Target.classList.remove('fill1');
    this.water05Target.classList.remove('fill05');
    this.water2Target.classList.remove('fill2');
    const waterValue = parseFloat(this.water15Target.getAttribute('value'));
    this.inputwaterTarget.value = waterValue;
  }

  waterRise2() {
    this.water2Target.classList.add('fill2');
    this.water1Target.classList.remove('fill1');
    this.water15Target.classList.remove('fill15');
    this.water05Target.classList.remove('fill05');
    const waterValue = parseFloat(this.water2Target.getAttribute('value'));
    this.inputwaterTarget.value = waterValue;
  }
}
