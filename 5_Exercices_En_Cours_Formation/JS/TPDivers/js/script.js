let newH1 = document.createElement('h1');
newH1.innerHTML = "Je suis le titre H1";
document.body.appendChild(newH1);

let newDiv = document.createElement('div');
document.body.appendChild(newDiv);

let inDiv = document.body.lastChild;
let inDivAussi = document.body.getElementsByTagName('div')[0];

    let newH2 = document.createElement('h2');
    newH2.innerHTML = "Je suis le 1e titre H2";
    inDiv.appendChild(newH2);

    let newP = document.createElement('p');
    newP.innerHTML = "Je suis le 2nd paragraphe";
    inDiv.appendChild(newP);

    let newP2 = document.createElement('p');
    newP2.innerHTML = "Je suis le 3e paragraphe";
    inDiv.appendChild(newP2);

    let newUl = document.createElement('ul');
    inDivAussi.appendChild(newUl);


let inUl = document.body.children[1].children[3];
let inUlAussi = document.body.getElementsByTagName('ul')[0];

let newLi = document.createElement('li');
newLi.innerHTML = "ListeItem1";
inUlAussi.appendChild(newLi);

let newLi2 = document.createElement('li');
newLi2.innerHTML = "ListeItem2";
inUlAussi.appendChild(newLi2);

let newLi3 = document.createElement('li');
newLi3.innerHTML = "ListeItem3";
inUlAussi.appendChild(newLi3);

let newLi4 = document.createElement('li');
newLi4.innerHTML = "ListeItem4";
inUlAussi.appendChild(newLi4);

let newLi5 = document.createElement('li');
newLi5.innerHTML = "ListeItem5";
inUlAussi.appendChild(newLi5);