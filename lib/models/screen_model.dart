
class Screen{

  //1 Create Constructor and variable
  Screen({this.first_name,this.last_name,this.region,this.country,this.bio,this.post,this.followers,this.following,this.profile_pic});
  String? first_name;
  String? last_name;
  String? region;
  String? country;
  num? following;
  num? post;
  String? bio;
  num? followers;
  String? profile_pic;

  //2 passing JSON data
  factory Screen.fromJson(Map<String,dynamic>parsedJson){
    return Screen(
        first_name:parsedJson['first_name'],
        last_name:parsedJson['last_name'],
        region:parsedJson['region'],
        country:parsedJson['country'],
        following:parsedJson['following'],
        post:parsedJson['post'],
        bio: parsedJson['bio'],
        followers:parsedJson['followers'],
        profile_pic:parsedJson['profile_pic'],

    );
  }

}