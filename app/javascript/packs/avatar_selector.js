const avatarSelector = () => {
  const avatars = document.querySelectorAll('.avatar-selector');
  avatars.forEach(avatar => {
    avatar.addEventListener('click', () => {
      clearAvatarBorders(avatars);
      const radio = avatar.querySelector('input');
      radio.checked = true;
      const image = avatar.querySelector('img');
      image.classList.add('border', 'border-avatar');
      // add our own stylesheet for border-primary-avatar
    })
  })
}

const clearAvatarBorders = (avatars) => {
  avatars.forEach((avatar) => {
    const image = avatar.querySelector('img')
    image.classList.remove('border', 'border-primary');
  })
}

export {avatarSelector}
