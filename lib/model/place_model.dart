class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.image,
    required this.location,
    required this.name,
    required this.distance,
    required this.days,
    required this.desc,
  });
}

List places = [
  PlaceInfo(
    image: 'assets/images/chittorgarh.webp', 
    location: 'India', 
    name: 'Chittorgarh Fort', 
    distance: 50000, 
    days: 12, 
    desc: "This 590 foot fort spread across 692 acres is the largest fort in India and a World Heritage Site."),
  PlaceInfo(
    image: 'assets/images/Cinque-Terre-Italy (1).jpeg', 
    location: 'Italy', 
    name: 'Cinque Terre', 
    distance: 22500, 
    days: 7, 
    desc: "Cinque Terre literally means 'Five Lands', and consists of 5 villages located across the rugged hillside."),
  PlaceInfo(
    image: 'assets/images/Galapagos-Islands.jpeg', 
    location: 'Ireland', 
    name: 'Galapagos-Islands', 
    distance: 47000, 
    days: 22, 
    desc: "Named one of the natural wonders of the UK, the Gaint Causeway is an area with about 40,000 interconnected rivers."),
  PlaceInfo(
    image: 'assets/images/Kyoto-Japan.jpeg', 
    location: 'Japan', 
    name: 'kyoto', 
    distance: 17000, 
    days: 15, 
    desc: "Kyoto is one of the most favourite Japanese cities for tourists. From the iconic temples, palaces ect."),

];
  