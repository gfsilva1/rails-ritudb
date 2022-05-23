document.addEventListener('turbolinks:load', () => {
  const aqui = document.getElementById("teste");
  aqui.addEventListener('click', (event) => {
    aqui.classList.toggle("green")
  });
});
