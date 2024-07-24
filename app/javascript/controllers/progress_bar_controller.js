import { Controller } from '@hotwired/stimulus'

export default class extends Controller {

  static targets = ["progressBar", "emoji"]
   static values = {progression: Number}
  connect () {
     console.log("ProgressBar connecter")
     console.log(this.progressionValue)
     console.log(this.progressBarTarget)
    console.log(this.emojiTarget)
     this.updateProgressBar()
    
  }

  updateProgressBar() {
  this.progressBarTarget.style.width=this.progressionValue + "%"
  console.log(this.progressBarTarget.style.width)
  // this.emojiTarget.style.left=this.progressionValue + "%"

  }

}
