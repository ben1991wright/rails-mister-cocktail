const showCardList = () => {
  const cardList = document.querySelectorAll('.card')
  cardList.forEach((card) => {
    card.addEventListener('mouseover', (event) => {
      card.lastElementChild.classList.remove('hidden')
    })
    card.addEventListener('mouseout', (event) => {
      card.lastElementChild.classList.add('hidden')
    })
  })
}

export { showCardList }
