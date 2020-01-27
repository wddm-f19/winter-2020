class Grid {
  constructor(target, cols, rows) {
    this.columns = cols
    this.rows = rows

    this.dom = document.createElement('div')
    this.dom.className = `grid`
    this.dom.style.gridTemplateColumns = `repeat(${this.columns}, 1fr)`
    this.dom.style.gridTemplateRows = `repeat(${this.rows}, 1fr)`
    
    target.appendChild(this.dom)

  }
  status() {
    return `Grid: ${this.columns}x${this.rows}`
  }
  getElement() {
    return this.dom
  }
}

class Item {

}


const grid = new Grid(document.querySelector('body'), 4, 3)