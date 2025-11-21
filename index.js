let express = require('express');
let routes = require('./routes');

const app = express();

app.set('view engine', 'hbs');
app.use(express.static('public'));

app.get('/', routes.index);

app.get('/api', routes.apiIndex);
app.get('/api/users', routes.users);
app.get('/api/users/:id', routes.profilePage); 
app.get('/api/posts', routes.posts); 
app.get('/api/stats', routes.statistics); 
app.get('/api/topActiveUsers/', routes.topActiveUsers); 

app.get('*invalid', routes.default);

let server = app.listen(3000, function() {
    console.log('Listening on port 3000');
});