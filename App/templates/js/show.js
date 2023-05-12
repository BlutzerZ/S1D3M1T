 function kemejaCall(x) {
  console.log("awdasd");
  const hideMe = document.querySelectorAll("#dressOut, #oneSet, #blouseOut, #celanaOutput, #kemejaOut");
  hideMe.forEach(element => {
    element.style.display = "none"
  });
  
  const showMe = document.querySelectorAll("#" + x);
  showMe.forEach(element => {
    element.style.display = "block"
  });
}


function openModal(imgSrc, judulProduk) {
  document.querySelector('#dataImg').src = imgSrc;
  document.querySelector('#pop-nama-produk').textContent = judulProduk;
  document.querySelector('.modal').classList.remove('hidden');
  
}

var buttons = document.querySelectorAll('#btn-show');
buttons.forEach(function(button) {
  button.addEventListener('click', function() {
    // Mengambil data produk dari elemen HTML terkait dengan tombol yang ditekan
    var imgSrc = button.parentNode.querySelector('img').src;
    var judulProduk = button.parentNode.querySelector('h3 a').textContent;
    openModal(imgSrc, judulProduk);
  });
});


function closeModal() {
  document.querySelector('.modal').classList.add('hidden');
}

function submitModal() {

  closeModal();
}

document.addEventListener('keydown', function (event) {
  if (event.key === 'Escape') {
    closeModal();
  }
});

function updatePrice(size) {
  let price;
  if (size === 'S' || size === 'M' || size === 'L') {
    price = 70500;
  } else if (size === 'XL' || size === 'XXL') {
    price = 73500;
  } else {
    price = 0;
  }
  document.getElementById('harga-mod').textContent = 'Harga: ' + price;
}

function updateColor(z) {
  const colorPick = document.querySelectorAll("#hitam, #blue, #putih, #merah, #hijau, #abuAbu, #lemon, #cyan")
  colorPick.forEach(element => {
    element.style.border = "none"
  });

  const colorAll = document.querySelectorAll("#" + y)
  colorAll.forEach(element => {
    element.style.border = "2px solid gray"
  });
}

function showPopup(imgSrc) {
  document.getElementById("popup-img").src = imgSrc;
  document.getElementById("popup").style.display = "flex";
}

document.getElementById("popup").addEventListener("click", function() {
  document.getElementById("popup").style.display = "none";
});
