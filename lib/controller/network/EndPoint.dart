//End Point's this's used in API



//network connection details
const String BASE_URL = "https://petology.orangedigitalcenteregypt.com/";


//End Points

//Authentication
const String LOGIN = "/auth/login";
const String FACEBOOK_LOGIN = "/auth/oauth2/facebook";
const String GOOGLE_LOGIN = "/auth/oauth2/google";
const String SIGNUP = "/auth/register";


//Pets
const String CATEGORIES_PETS ="/categories/{categoryId}/pets";
const String FILTERS_PETS ="/pets/filters/{categoryId}";
const String REQUEST_PETS ="/pets/request";
const String ID_PETS ="/pets/{id}";
const String POST_PETS ="/pets";
const String GET_PETS ="/pets";

//IDs


const int DOG_ID = 1;
const int CAT_ID = 2;

//Static Paragraghs
const String HOMEPAGE_FIRST_SECTION ="/static/homepage/first-section";
const String FOOTER ="/static/homepage/footer";
const String PET_NEEDS ="/static/homepage/pet-needs";
const String HOMEPAGE_SECOND_SECTION ="/static/homepage/second-section";
const String HOW_FEED_YOUR_CAT ="/static/how-to/$CAT_ID";
const String HOW_FEED_YOUR_DOG ="/static/how-to/$DOG_ID";



