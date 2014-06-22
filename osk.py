import webapp2

class Redirect(webapp2.RequestHandler):
    def get(self):
        self.redirect('https://docs.google.com/presentation/d/1af_vXgX0e5w_mLi8lMiHRUn7VapScwLvI9lDFo95x1E/edit?usp=sharing', permanent=True)

application = webapp2.WSGIApplication([
    ('/osk', Redirect),
])
