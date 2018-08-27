console.log("I'm here!")

document.getElementById("js-clicker").addEventListener('click', () => {
  fetch('/birthday')
    .then(r => r.json())
    .then(r => {
      console.log(r)
      r.forEach(birthday =>{
        let bd = document.createElement("div")
        bd.textContent = birthday.name + " " + birthday.date + " " + birthday.greeting
        document.getElementById("list").appendChild(bd)
      })
    })
})


// TODO: make an http request to ""

//url: "/birthdays"
