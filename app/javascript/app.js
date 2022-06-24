const boton_profile = document.querySelector('#user-menu-button')
const menu = document.querySelector('#mobile-menu')

boton_profile.addEventListener('clic', ()=>{
//  menu.addEventListener('clic', ()=>{
    console.log('Soy el layout')
    menu.classList.toggle('hidden')
})
