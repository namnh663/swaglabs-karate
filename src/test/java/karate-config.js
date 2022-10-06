function fn() {
	var env = karate.env

	var config = {
		url: 'https://www.saucedemo.com/'
	}

	if (env == 'test') {
		config.baseUrl = 'https://www.saucedemo.com/'
	}

	if (env == 'prod') {
		config.baseUrl = ''
	}
	
	return config;
}