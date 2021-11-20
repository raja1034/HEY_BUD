const interestSelector = () => {
   const interests = document.querySelectorAll('.interest-selector-first');
   interests.forEach(interest => {
     interest.addEventListener('click', () => {
       const check_box = interest.querySelector('input');
       check_box.checked = !check_box.checked;
       // thanks bro Ali Seyfollahi
     })
   })
 }

export {interestSelector}
