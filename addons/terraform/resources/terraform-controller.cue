output: {
	type: "helm"
	properties: {
		repoType: "helm"
		url:      "https://charts.kubevela.net/addons"
		chart:    "terraform-controller"
		version:  "0.2.20"
		values: {
			githubBlocked?: *"'false'" | string
			//   if !parameter["github-blocked"] {
			//    githubBlocked: "'false'"
			//   }
			if parameter["github-blocked"] {
				githubBlocked: "'true'"
			}
		}
	}
}

parameter: {
	// +usage=Whether GitHub is blocked
	"github-blocked": *true | bool
}
