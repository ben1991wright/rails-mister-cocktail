const displayForm = () => {
  const button = document.getElementById('add-dose')
  const form =  document.getElementById('dose-form')
  button.addEventListener('click', (event) => {
    button.classList.add('hidden')
    form.classList.remove('hidden')
  })
}

export { displayForm }
