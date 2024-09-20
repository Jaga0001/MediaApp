from flask import Flask, jsonify

app = Flask(__name__)

# Sample data (you can modify this data to match your stories)
stories = [
    {
        "id": 1,
        "title": "Custom Embroidery Design",
        "thumbnail": "https://example.com/image1.jpg",
    },
    {
        "id": 2,
        "title": "Home Garden Setup",
        "thumbnail": "https://example.com/image2.jpg",
    },
    {
        "id": 3,
        "title": "Bathroom Renovation Ideas",
        "thumbnail": "https://example.com/image3.jpg",
    },
    {
        "id": 4,
        "title": "Healthy Blueberry Recipes",
        "thumbnail": "https://example.com/image4.jpg",
    },
    {
        "id": 5,
        "title": "Kitchen Ideas",
        "thumbnail": "https://example.com/image4.jpg",
    },
    {
        "id": 6,
        "title": "Garden Ideas",
        "thumbnail": "https://example.com/image4.jpg",
    },
]

# API endpoint to fetch all stories
@app.route('/stories', methods=['GET'])
def get_stories():
    return jsonify(stories), 200

# Running the Flask app
if __name__ == '__main__':
    app.run(debug=True)
