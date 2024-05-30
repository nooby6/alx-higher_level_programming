$(document).ready(function() {
    $.ajax({
        url: 'https://swapi-api.alx-tools.com/api/films/?format=json',
        method: 'GET',
        success: function(data) {
            const movies = data.results;
            movies.forEach(movie => {
                $('#list_movies').append(`<li>${movie.title}</li>`);
            });
        },
        error: function() {
            $('#list_movies').append('<li>An error occurred while fetching the data.</li>');
        }
    });
});
