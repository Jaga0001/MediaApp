from flask import Flask, jsonify

app = Flask(__name__)

# Sample data (you can modify this data to match your stories)
stories = [
    [
    {
        "id": 1,
        "title": "Custom Embroidery Design",
        "thumbnail": "https://th.bing.com/th/id/OIP.65APc3TMbEt8ESOD_Qje6QHaHR?rs=1&pid=ImgDetMain",
        "description": "Learn how to create beautiful custom embroidery designs with this tutorial."
    },
    {
        "id": 2,
        "title": "Home Garden Setup",
        "thumbnail": "https://th.bing.com/th/id/OIP._R44pZfhAgEHUytz6TStlQHaFj?rs=1&pid=ImgDetMain",
        "description": "Tips and ideas for setting up a home garden for all seasons."
    },
    {
        "id": 3,
        "title": "Bathroom Renovation Ideas",
        "thumbnail": "https://www.architectureartdesigns.com/wp-content/uploads/2020/05/20-Impressive-Mid-Century-Modern-Bathroom-Designs-You-Must-See-3-2048x2048.jpg",
        "description": "Check out these trendy mid-century modern bathroom renovation ideas."
    },
    {
        "id": 4,
        "title": "Healthy Blueberry Recipes",
        "thumbnail": "https://th.bing.com/th/id/R.49426caa50786aa20fc65279451dddf0?rik=JCfMJ4SkSycy7w&riu=http%3a%2f%2fwww.decorationlove.com%2fwp-content%2fuploads%2f2016%2f09%2fAwesome-Kitchen-Design-1.jpg&ehk=PpjGIMEc2g2MVal1PIpNf98P1xAAYadRwyNgxvr11KQ%3d&risl=&pid=ImgRaw&r=0",
        "description": "Discover delicious and healthy blueberry recipes you can make at home."
    },
    {
        "id": 5,
        "title": "Kitchen Ideas",
        "thumbnail": "https://thecleaneatingcouple.com/wp-content/uploads/2018/05/blueberry-baked-oatmeal-1.jpg",
        "description": "Inspiring kitchen ideas that will transform your cooking space."
    },
    {
        "id": 6,
        "title": "Garden Ideas",
        "thumbnail": "https://www.familyhandyman.com/wp-content/uploads/2018/05/shutterstock_442164886.jpg",
        "description": "Create a relaxing garden space with these creative garden ideas."
    },
    {
        "id": 7,
        "title": "Personalized Gift Wrapping",
        "thumbnail": "https://my100yearoldhome.com/wp-content/uploads/2020/12/Creative-Gift-Wrapping-Ideas--scaled.jpg",
        "description": "Learn how to wrap gifts creatively and make your presents stand out."
    },
    {
        "id": 8,
        "title": "DIY Plant Shelves",
        "thumbnail": "https://th.bing.com/th/id/R.25ae3125b7764cc7def188286ff46d58?rik=8HWlU8oxmNG%2frQ&riu=http%3a%2f%2fdonpedrobrooklyn.com%2fwp-content%2fuploads%2f2017%2f04%2fA-frame-plant-stand-mypotsandplanters-683x1024.jpg&ehk=kyz9R5SW68DMlaWZaDhcG8sbsemykcIlxBpoblm7TeM%3d&risl=&pid=ImgRaw&r=0",
        "description": "Build your own DIY plant shelves with this step-by-step guide."
    },
    {
        "id": 9,
        "title": "Travel Photography Tips",
        "thumbnail": "https://th.bing.com/th/id/OIP.kXHib2-RVd3OouKpruP3kAHaEw?rs=1&pid=ImgDetMain",
        "description": "Capture stunning photos on your travels with these photography tips."
    },
    {
        "id": 10,
        "title": "Handmade Pottery Techniques",
        "thumbnail": "https://i.etsystatic.com/8161191/r/il/13f34d/2256130005/il_fullxfull.2256130005_2zea.jpg",
        "description": "Learn handmade pottery techniques to create beautiful ceramic pieces."
    }
]

]

# Endpoint to fetch all stories
@app.route('/stories', methods=['GET'])
def get_stories():
    return jsonify(stories), 200

# Running the Flask app
if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5000)
