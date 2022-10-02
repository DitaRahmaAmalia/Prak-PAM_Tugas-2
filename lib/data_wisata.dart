class DataWisata {
  String name;
  String location;
  String stars;
  String tiketMasuk;
  String websiteLink;
  List<String> imageUrl;
  List<String> facility;
  List<String> iconFacility;

  DataWisata({
    required this.name,
    required this.location,
    required this.stars,
    required this.tiketMasuk,
    required this.websiteLink,
    required this.imageUrl,
    required this.facility,
    required this.iconFacility
  });
}

var wisataList = [
  DataWisata(
      name: "Candi Prambanan",
      location: "Yogyakarta",
      stars: "5",
      tiketMasuk: "Rp 50.000",
      websiteLink:
      "https://borobudurpark.com/temple/prambanan/",
      imageUrl: [
        "https://borobudurpark.com/wp-content/uploads/2017/02/prambanan4-1024x683.jpg",
        "https://borobudurpark.com/wp-content/uploads/2017/02/prambanan3-1024x683.jpg",
        "https://borobudurpark.com/wp-content/uploads/2017/02/prambanan5-1024x683.jpg",
        "https://borobudurpark.com/wp-content/uploads/2017/02/prambanan7-1024x683.jpg",
        "https://borobudurpark.com/wp-content/uploads/2017/02/prambanan6-1024x684.jpg"
      ],
      facility: [
        'Free Parking',
        'Restaurant',
        'Toilet'
      ],
      iconFacility: [
        '0xe39d',
        '0xe533',
        '0xe580',
      ]),
  DataWisata(
      name: "The World Landmarks - Merapi Park",
      location: "Yogyakarta",
      stars: "4",
      tiketMasuk: "Rp 35.000",
      websiteLink:
      "https://www.merapipark.com/",
      imageUrl: [
        "https://static.wixstatic.com/media/bd5f3b_06e92e7b4b554749b237791d9096e3a7~mv2_d_5046_3363_s_4_2.jpg/v1/fill/w_1225,h_560,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/bd5f3b_06e92e7b4b554749b237791d9096e3a7~mv2_d_5046_3363_s_4_2.jpg",
        "https://static.wixstatic.com/media/bd5f3b_2f04802c781a4f2ab52dbaffac89a837~mv2.jpg/v1/fill/w_1225,h_560,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/bd5f3b_2f04802c781a4f2ab52dbaffac89a837~mv2.jpg",
        "https://static.wixstatic.com/media/bd5f3b_8827519a70224cbdab2f2766a7eba973~mv2_d_3240_2160_s_2.jpg/v1/fill/w_1225,h_560,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/bd5f3b_8827519a70224cbdab2f2766a7eba973~mv2_d_3240_2160_s_2.jpg"
      ],
      facility: [
        'Free Parking',
        'Restaurant',
        'Toilet'
      ],
      iconFacility: [
        '0xe39d',
        '0xe533',
        '0xe580',
      ]),
  DataWisata(
      name: "Taman Safari Indonesia",
      location: "Bogor",
      stars: "4",
      tiketMasuk: "Rp 250.000",
      websiteLink:
      "https://tamansafari.com/",
      imageUrl: [
        "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/08/27/991095403.jpg",
        "https://images.tokopedia.net/img/JFrBQq/2022/6/20/1937bbe9-026b-4796-8722-06e0f3a8d51b.jpg",
        "https://asset.kompas.com/crops/yktowolOMORCPuDGScQWgmQtX_w=/0x0:980x653/750x500/data/photo/2021/09/25/614f30688d277.jpg"
      ],
      facility: [
        'Free Parking',
        'Restaurant',
        'Toilet'
      ],
      iconFacility: [
        '0xe39d',
        '0xe533',
        '0xe580',
      ]),
  DataWisata(
      name: "Body Rafting Green Canyon",
      location: "Pangandaran",
      stars: "4",
      tiketMasuk: "Rp 125.000",
      websiteLink:
      "https://www.baraja-bodyrafting.com/paket-body-rafting-green-canyon/?gclid=CjwKCAjw7eSZBhB8EiwA60kCW4zO4mNd5hRgwGP_cBXRYe6GdpsRJG0EZNIZyTzYhVzEGbT33hRUfBoC844QAvD_BwE",
      imageUrl: [
        "https://1.bp.blogspot.com/-WuO6y46kd6o/XQ-FLw_94-I/AAAAAAAAApQ/UFsbcN5KuSEiIQAIW9RnU02ACMcWluW7ACLcBGAs/s1600/Keindahan-Green-Canyon-Pangandaran.jpg",
        "https://img.inews.co.id/media/822/files/inews_new/2019/01/17/green_canyon1.jpg",
        "https://1.bp.blogspot.com/-RyUYxshjw2Q/XQ_AoxqPq-I/AAAAAAAAAps/E9t-c7t4rvw4YlR49cpX7AikLFo3P9VjQCLcBGAs/s1600/Berwisata-di-Green-Canyon-Pangandaran.jpg",
        "https://1.bp.blogspot.com/-Y5IqzjqjK_U/XQ_Aox5o-UI/AAAAAAAAApo/EwjOv7IrBFY44TpEglchEO4uilClSqKRACLcBGAs/s1600/Keindahan-Alam-Green-Canyon-Pangandaran.jpg"
      ],
      facility: [
        'Free Parking',
        'Restaurant',
        'Toilet'
      ],
      iconFacility: [
        '0xe39d',
        '0xe533',
        '0xe580',
      ]),
];