
//when the Say Hello button is clicked, a modal should apprear
document.getElementById('sayHelloButton').addEventListener('click', function (){
    document.getElementById('contactMeModal').classList.toggle('is-active');
});

//when this is clicked, the modal should vanish into thin air
document.getElementById('closeModal').addEventListener('click', function() {
    document.getElementById('contactMeModal').classList.toggle('modal-close');
});