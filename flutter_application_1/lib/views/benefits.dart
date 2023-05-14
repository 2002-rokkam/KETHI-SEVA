import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flip_card/flip_card.dart';
//import 'package:flutter_flip_view/flutter_flip_view.dart';


class Benefits11 extends StatefulWidget {
  @override
  _Benefits11State createState() => _Benefits11State();
}

class _Benefits11State extends State<Benefits11> {
  final List<String> titles = [
    'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
    'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)',
    'Kisan Credit Card (KCC) Scheme',
    'National Agriculture Market (e-NAM)',
    'Paramparagat Krishi Vikas Yojana (PKVY)',
    'Pradhan Mantri Krishi Sinchai Yojana',
    'Minimum support price (MSP)',
  ];

  final List<String> descriptions = [
    'Pradhan Mantri Fasal Bima Yojana (PMFBY): \n \n This is an insurance scheme that provides protection to farmers against losses due to crop damage or failure. The premium rates are subsidized by the government and the claims are settled directly to the farmers bank accounts.\nUnder the PMFBY scheme, farmers can take insurance cover for their crops at a nominal premium rate. The premium rates are heavily subsidized by the government, and the remaining cost is shared by the farmer and the government.\n\n',
    'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN): \n\n Pradhan Mantri Kisan Samman Nidhi (PM-KISAN) is a central government scheme launched in February 2019 to provide financial assistance to farmers across the country. Under this scheme, eligible farmers receive a direct transfer of Rs. 6,000 per annum in their bank accounts.\n The scheme has helped in providing timely financial assistance to farmers. The scheme has covered more than 10 crore farmers across the country and has provided them with financial security.\n\n',
    'Kisan Credit Card (KCC) Scheme: \n\n Kisan Credit Card (KCC) Scheme is a government initiative launched in 1998 to provide affordable credit to farmers in India. The scheme aims to provide credit for crop production, post-harvest activities, and other farming-related activities such as the purchase of inputs like seeds, fertilizers, pesticides, and machinery.\nThe e-NAM platform has also led to the integration of different markets and has reduced the fragmentation of markets. It has enabled farmers to access a wider market.\n\n ',
    'National Agriculture Market (e-NAM): \n\n National Agriculture Market (e-NAM) is an electronic trading platform launched in April 2016 by the Government of India to create a unified national market for agricultural commodities. The e-NAM platform enables farmers to sell their produce directly to buyers from anywhere in the country without the need to visit physical marketplaces.\nThe e-NAM platform has been implemented in a phased manner, and currently, it covers more than 1,000 regulated markets across 18 states and three Union Territories in India.\n\n ',
    'Paramparagat Krishi Vikas Yojana (PKVY): \n\n Under the PKVY scheme, groups of farmers are encouraged to take up organic farming through the adoption of traditional and organic farming practices. The scheme provides financial assistance to farmers to cover the costs of organic inputs like vermicompost, organic pesticides, and bio-fertilizers.\n The scheme also provides training to farmers on organic farming practices. The farmers are also provided with certification for their organic produce, which helps in accessing premium markets.\n\n',
    'Pradhan Mantri Krishi Sinchai Yojana(PMKSY):\n\n The scheme aims to increase the irrigated area in the country and provide a boost to agricultural productivity.Under the PMKSY scheme, the government provides financial assistance to states for the development of irrigation infrastructure. The scheme also promotes the efficient use of water through micro-irrigation techniques such as drip and sprinkler irrigation.\n The scheme has helped in increasing the irrigated area in the country and has provided a boost to agricultural productivity.\n\n',
    'Minimum support price (MSP):\n\n MSP stands for Minimum Support Price, which is a government-mandated price that is set to ensure that farmers get a fair price for their crops. The MSP is announced by the government before the sowing season for major crops, and it acts as a safety net for farmers in case market prices fall below the MSP.\n The MSP is an important tool for ensuring that farmers get remunerative prices for their produce and helps in maintaining a stable supply of agricultural commodities in the market.\n\n'
  ];

  final List<String> images = [
    'assets/pmfby.png',
    'assets/pmksn.jpg',
    'assets/kcc.jpg',
    'assets/enam.png',
    'assets/pkvy.jpg',
    'assets/pmksy.jpg',
    'assets/msp.jpeg',
  ];
  final List<Uri> links = [
    Uri.parse('https://pmfby.gov.in/'),
    Uri.parse('https://pmkisan.gov.in/'),
    Uri.parse('https://pib.gov.in/FactsheetDetails.aspx?Id=148600'),
    Uri.parse('https://www.enam.gov.in/web/'),
    Uri.parse('https://pgsindia-ncof.gov.in/pkvy/Index.aspx'),
    Uri.parse('https://pmksy.gov.in/'),
    Uri.parse('https://farmer.gov.in/mspstatements.aspx'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: FlipCard(
                front: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        child: Text(
                          titles[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                back: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Text.rich(
                      TextSpan(
                        text: '',
                        children: [
                          TextSpan(
                              text: descriptions[index],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Link',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString(links[index].toString());
                              },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          },
          staggeredTileBuilder: (int index) => StaggeredTile.count(2, 2),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
      ),
    );
  }
}
