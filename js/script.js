(function() {
    emailjs.init("NtXLI7pdPVDUfmPe7"); // Substitua por sua chave pública do EmailJS
})();



document.getElementById('contact-form').addEventListener('submit', function(event) {
event.preventDefault();

emailjs.sendForm('service_l7nwgnl', 'template_qpab951', this)
.then(function() {
  document.getElementById('status-message').textContent = 'Sua inscrição para a Batalha do Quintal foi realizada com sucesso! Boa sorte!';
  document.getElementById('status-message').style.color = 'green';
}, function(error) {
  document.getElementById('status-message').textContent = 'Erro ao enviar inscrição: ' + error.text;
  document.getElementById('status-message').style.color = 'red';
});
});
