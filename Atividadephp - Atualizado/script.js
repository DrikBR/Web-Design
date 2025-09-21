function goToLink (link) {
    window.location.href = link;
}

function getLinks() {
    fetch("getlinks.php")
    .then(response=> {
        if (!response.ok) {
            throw new Error('Erro ao carregar o arquivo: ' + response.statusText);
        }

        return response.json();
    })

    .then(data => {
        nome = document.getElementById("nome");
        nome.textContent = data[0].nomeU;

        frase = document.getElementById("frase");
        frase.textContent = data[0].frase;

        instagram = document.getElementById("instagram");
        instagram.innerHTML += data[0].instagram;

        foto = document.getElementById("foto");
        foto.src = data[0].foto;

        fundo = document.getElementById("user");
        fundo.style.backgroundColor = data[0].cor_fundo;
        fundo.style.color = data[0].cor_fonte;

        links = document.getElementById("container-links");
        for (var i = 0; i < data.length; i++) {
            links.innerHTML += "<div class = 'link' onClick = goToLink('" + data[i].link + "')>" + data[i].nomeL + "</div> <br>";
        }
    })

    .catch(error => {
        console.log(error);
    })
}

getLinks();