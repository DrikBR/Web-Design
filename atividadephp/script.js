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
        links1 = document.getElementById("container-links1");
        nome1 = document.getElementById("nome1");
        nome1.textContent = data.user1[1].nomeU;
        foto1 = document.getElementById("foto1");
        foto1.src = data.user1[1].foto;

        for (var i = 0; i < data.user1.length; i++) {
            links1.innerHTML += "<div class = 'link' onClick = goToLink('" + data.user1[i].link + "')>" + data.user1[i].nomeL + ": " + data.user1[i].link + "</div>";
        }

        links2 = document.getElementById("container-links2");
        nome2 = document.getElementById("nome2");
        nome2.textContent = data.user2[1].nomeU;
        foto2 = document.getElementById("foto2");
        foto2.src = data.user2[1].foto;
        for (var i = 0; i < data.user2.length; i++) {
            links2.innerHTML += "<div class = 'link2' onClick = goToLink('" + data.user2[i].link + "')>" + data.user2[i].nomeL + ": " + data.user2[i].link + "</div>";
        }
    })

    .catch(error => {
        console.log(error);
    })
}

getLinks();