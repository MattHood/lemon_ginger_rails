import { Controller } from "@hotwired/stimulus"

export default class FrontAndBack extends Controller {
	static targets = ['dataJSON', 'container', 'webComponent'];
	static values = {
		executionURL: String,
		executionTag: String
	}
	
	connect() {
		const webComponent = document.createElement(this.executionTagValue);
		webComponent.setAttribute('data-activities-target', 'webComponent')
		this.containerTarget.appendChild(webComponent);
	}
	
	update() {
		const sanitized = this.dataJSONTarget?.value
			.replace(/[\u2018\u2019]/g, "'")
		    .replace(/[\u201C\u201D]/g, '"');
		const parameters = JSON.parse(sanitized);
		this.webComponentTarget
			.getAttributeNames()
			.filter((attr) => attr !== 'data-activities-target')
			.forEach((attr) => this.webComponentTarget.removeAttribute(attr))
		for (const [key, value] of Object.entries(parameters)) {
			this.webComponentTarget.setAttribute(key, value);
		}
	}
}