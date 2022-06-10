
const homeLink = () => {
  // when bottom of window hit bottom of div backgroud go down depending on the scroll value
  const form = document.querySelector('#search-form')
  if (form) {
    const poussetteLink = document.querySelector('#poussette-icone')
    const siegeLink = document.querySelector('#siege-icone')
    const queryInput = document.querySelector('#query')
    poussetteLink.addEventListener('click', (e) => {
      e.preventDefault()
      const url = `/products?query=${query.value}&category=poussette`
      window.location.href = url;
    })
    siegeLink.addEventListener('click', (e) => {
      e.preventDefault()
      const url = `/products?query=${query.value}&category=siege`
      window.location.href = url;
    })
  }
}

export { homeLink };
