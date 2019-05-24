module.exports = {
	async home(req, res) {
  		await res.render('index', { title: 'WODERATOR', condition: true, anyArray: [1,2,3] }); 
  	}
}