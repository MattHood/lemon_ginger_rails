export class FrontAndBack extends HTMLElement {
	static get observedAttributes() { return ['front', 'back'] }
	
	constructor() {
		super();
	}
	
	connectedCallback() {
		this.updateAttributes();
	}
	
	attributeChangedCallback() {
		this.updateAttributes();
	}
	
	updateAttributes() {
		this.innerHTML = `Front: ${this.getAttribute('front')} | Back: ${this.getAttribute('back')}`;
	}
}

window.customElements.define('lg-front-and-back', FrontAndBack);