var contactMeModal = document.getElementById('contactMeModal');

//when the Say Hello button is clicked, a modal should apprear
document.getElementById('sayHelloButton').addEventListener('click', function (){
    contactMeModal.classList.toggle('is-active');
});

//when this is clicked, the modal should vanish into thin air
document.getElementById('closeModal').addEventListener('click', function() {
    contactMeModal.classList.toggle('modal-close');
});

//when clicked, this should send an email
document.getElementById('sendEmailButton').addEventListener('click', function(){
    document.getElementById('sendEmailButton').classList.toggle('is-loading');

    var personEmail = document.getElementById("personEmail").value;
    var personName = document.getElementById("personName").value;
    var personMessage = document.getElementById("personMessage").value;    
    var myEmail = "josiahponso@gmail.com";

    var template_params = {
        "reply_to": personEmail,
        "from_name": personName,
        "to_name": myEmail,
        "message_html": personMessage
     }
     
     var service_id = "default_service";
     var template_id = "template_Ax2BBqG2";
     emailjs.send(service_id,template_id,template_params);
   
});