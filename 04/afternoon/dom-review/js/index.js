// document.createElement()

document.getElementById('list').innerHTML = `<li class="item first" data-id="1" style="color: red;">First <strong>Item</strong></li>`


const item = document.createElement('li')
item.className = 'item'
item.classList.add('second')
item.setAttribute('data-id', 2)
item.style.color = `lightgreen`
item.textContent = 'Second '

const str = document.createElement('strong')
str.textContent = 'Item'
item.appendChild(str)

document.getElementById('list').appendChild(item)