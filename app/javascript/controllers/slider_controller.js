import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = ["rating_nutrition", "rating_activity", "rating_mood", "rating_nutrition_text", "rating_activity_text", "rating_mood_text"]

  updateValue() {
    const rating_nutrition = `${this.rating_nutritionTarget.value}`;
    this.rating_nutrition_textTarget.innerText = rating_nutrition;
    const rating_activity = `${this.rating_activityTarget.value}`;
    this.rating_activity_textTarget.innerText = rating_activity;
    const rating_mood = `${this.rating_moodTarget.value}`;
    this.rating_mood_textTarget.innerText = rating_mood;
  }
}
