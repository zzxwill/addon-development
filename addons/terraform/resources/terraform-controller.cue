output: {
	type: "helm"
	properties: {
		repoType: "helm"
		url:      "https://charts.kubevela.net/addons"
		chart:    "terraform-controller"
		version:  "0.2.19"
		values: {
			if parameter["github-blocked"] == false {
				githubBlocked: "'false'"
			}
			if parameter["github-blocked"] != false {
				githubBlocked: "'true'"
			}
			image: tag: latest
		}
	}
}
