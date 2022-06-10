
const calculator = () => {
  // when bottom of window hit bottom of div backgroud go down depending on the scroll value
  const form = document.querySelector('#inputGroupSelect01')
  if (form) {
    const total = document.querySelector('.total')
    const price = form.dataset.price;
    form.addEventListener('change', () => {
      total.innerText = ` Prix Total: ${parseInt(form.value) * price} €`
    })
  }
}

export { calculator };
