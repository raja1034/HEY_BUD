const hiddenShow = () => {
  const avatar_picker = document.querySelector('#avatar_pick');
  const interest_picker = document.querySelector('#interest_pick');
  const interest_button = document.querySelector('#interest_button');
  interest_button.addEventListener('click', (event) => {
    avatar_picker.classList.toggle('hidden-welcome');
    interest_picker.classList.toggle('hidden-welcome');
  })
}

// check_box.checked = !check_box.checked;

export { hiddenShow }
