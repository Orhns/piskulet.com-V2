DROP DATABASE bikes_DB

CREATE DATABASE bikes_DB

USE bikes_DB

CREATE TABLE bikes
(Id INT PRIMARY KEY IDENTITY,
bike_Name VARCHAR(50),
bike_Icon VARCHAR(50),
bike_BigImg VARCHAR(50),
bike_Url VARCHAR(50));

CREATE TABLE bikes_info
(Id INT PRIMARY KEY IDENTITY,
bikeName VARCHAR(50),
info VARCHAR(MAX),
pros VARCHAR(200),
cons VARCHAR(200),
bike_Id INT FOREIGN KEY REFERENCES bikes(Id));

CREATE TABLE bikesHomepg
(Id INT PRIMARY KEY IDENTITY,
itemName VARCHAR(50) ,
img VARCHAR(100),
homePgText VARCHAR(MAX));

INSERT INTO bikes
VALUES
('roadbike','~\images\icons2\roadbike.png','~\images\otherpages\roadbikeBig.jpg','~\roadb.aspx'),
('mountainbike','~\images\icons2\mountainbike.png','~\images\otherpages\mountainbike2Big.jpg','~\mountainb.aspx'),
('cyclocrossbike','~\images\icons2\cyclocross.png','~\images\otherpages\cyclecrossBig.jpg','~\cyclocrossb.aspx'),
('hybridbike','~\images\icons2\hybridbike.png','~\images\otherpages\hybridbikeBig.jpg','~\hybridb.aspx'),
('citybike','~\images\icons2\bicyclefe.png','~\images\otherpages\citybike2Big.jpg','~\cityb.aspx'),
('tourbike','~\images\icons2\touringbike.png','~\images\otherpages\tourbikeBig.jpg','~\tourb.aspx'),
('foldingbike','~\images\icons2\foldingbike.png','~\images\otherpages\foldingb3.jpg','~\foldingb.aspx'),
('womenbike','~\images\icons2\womenbike.png','~\images\otherpages\womenBike2.jpg','~\womenb.aspx');


INSERT INTO bikesHomepg
VALUES
('homepageIcon','~\images\icons2\cycling.png',NULL),
('emailBtn','~\images\icons2\email.png',NULL),
('bigImg','~\images\pictures\pexels-cristiana-raluca-686230.jpg',NULL);

INSERT INTO bikes_info
VALUES
('<h2>Yol Bisikleti </h2>','<p>
Adindan da anlasilacagi gibi yol bisikletleri yolda kullanim için tasarlanmistir.
Bu tabi ki diger bisikletlerin yolda kullanilamayacagi anlamina gelmiyor. Yol Bisikletinin farki onu yolda kullanim için enerjinin daha verimli kullanilmasina elverecek sekilde tasarlanmis olmasidir.
<br><br>
Buradaki etkenlerden bazilari bisikletin kivrimlaridir; ince tekerleri, egimli gidonu ve hafifletilmis agirligi gibi.
<br><br>
Bunlara biraz deginecek olursak:
&emsp13; Yol bisikletinin gidonu alçak ve egiktir, bu kullaniciya öne egildigi zaman çogunlukla yatay pozisyonda yol almasina destek olur. Bu hem aerodinami hem de gücün korunmasi için önemlidir. Bunu destekleyen faktörlerden bir digeri kadronun ince ve yine aerodinamik olarak tasarlanmis olmasidir. Kalkis esnasinda kolaylik olmasi için kadronun hafif olani makbuldür.
<br><br>
Tekerlere gelecek olursak; ince tekerler düzgün yola daha fazla basinç uygulayacagindan yol tutusu artmistir. Ayrica büyük teker çapi kullanicinin olusturdugu torku kaybetmemesi için de önemlidir.
<br><br>
<h4>Özetleyecek olursak yol bisikletinin karakteristigi su sekildedir: </h4>
<dfn>&emsp;Hafif kadro, ince tekerler, egimli bir gidon, yüksek vites orani.</dfn> <br><br>','(+)&nbsp; Hizli gitmek istiyorsan, yarismak istiyorsan yada sadece eglenmek için yaris bisikletini tercih edebilirsin. <br>',' (-)&nbsp; Offroad sürüs yapmak için, buzlanmis yollarda sürmek için bu bisiklet tercih edilmemeli.',1),
											('<h2>Dag Bisikleti</h2>','&emsp;Dag bisikletleri dagda yada off-road arazilerde sürmek için tasarlanmistir.
Dayanikli ve daha genis bir yapisi vardir. Tekerleri daha genis ve çikintilidir.
Dayanikli yapisi sayesinde bozuk yollarda kullanilabilir.Teker çapi yol bisikletine göre daha azdir yani tekerleri daha küçüktür ve aerodinami bu bisikletler için önemli degildir. Genis çikintili tekerleri engebeli yollarda zemine temas eden yüzey alanini artirarak tutusu kolaylastirir. Ayrica lastik basincinin degistirilmesi ile bu özellik
daha etkili bir biçimde ayarlanabilir.
<br><br>
<h4>Dag bisikletinin genel karakteristigi: </h4>
<dfn>&emsp;
Genis, çikintili tekerler, genis vites araligi, süspansiyon seçenekleri.</dfn> 
<br><br>','(+)&nbsp; Off-road arazide yada daglik arazide kullanmak istiyorsaniz dag bisikletini tercih edebilirsiniz. <br>','(-)&nbsp; Düzgün yollarda hizli gitmek istiyorsaniz, uzun mesafelar katetmek istiyorsaniz uygun bir seçenek olmayacaktir.',2),
											('<h2>Cyclocross Bisiklet</h2>','Cross bisiklet olarak bilinen bu bisikletler hibrit ve yol bisikletlerine göre çok daha dayanikli bisikletlerdir. Daglik arazide, tirmanislarda kullanimi zor olsa da off-road gidebileceginiz bir yol bisikleti olarak düsünebilirsiniz. Off-road kullanildigi gibi on-road kullanima da uygundur. 4 mevsim kullanilabilir.
<br><br>

<h4>Cross bisikletinin karakteristigi su sekildedir: </h4>

<dfn>&emsp;Yol bisikletindeki gibi egik bir gidon, farkli lastik kombinasyonlarina elverisli genis masa. Dayanikli yapi.</dfn> 

<br><br>','(+)&nbsp; Yol bisikletindeki gibi egik bir gidon ile off-road gitmek istiyorsaniz, yada izleyeceginiz rotada hem on-road yollar hem de off-road patikalar bulunuyor ise. <br>','(-)&nbsp; Çok hizli giden bir yol bisikleti istiyorsaniz, ya da egik gidon sevmiyorsaniz tercih etmemelisiniz.',3),
											('<h2>Hibrit Bisiklet</h2>','&emsp;Hibrit bisikletler düz bir gidona sahiptir. Bazilari ön masada süspansiyonlu olabilirken bazilari düz masaya sahiptir. Hibrit bisikletler daha genis bir kullanim alanina olanak saglarken dag bisikletinin rahatligini ve yol bisikletinin inceligini almistir. Çogunlukla kullanicinin istegine göre parçalarda degisiklik yapmaya olanak tanir.

<br><br>','(+)&nbsp; Sehir içinde gezinti, ulasim amaci için güzel bir tercih olabilir. <br>',' (-)&nbsp; Offroad sürüs yapmak için uygun bir seçenek degildir.',4),
											('<h2>Sehir Bisikleti</h2>','Sehir bisikletleri, commuter bisiklet olarak ta düsünülebilirler. Amaç çogunlukla sehir içinde kullanmak, evden okula, ise yada toplantiya gitmek olabilir.
Ülkemizde cografi özelliklerden dolayi pek yaygin olmasa da, sehir bisikletleri yolcularina çogu taleplerini karsilayabilecekleri olanaklar saglarlar. 
<br>
Kullanicinin yorulmamasi ve daha az efor ile daha uzun mesafe gidebilmesi için büyük tekerleri, esyalarini tasiyabilmeleri için bagaj çantasi ya da heybe takilmasini saglayan bir bagaj demiri, ve giysilerimizin zincire takilmamasi, ya da yaglanmamalari için büyük dislinin üzerinde bir zincir korumasi bulunur. 
<br>
Ayni sekilde kullanim kolayligi için daha rahat bir seleye ve dik oturus pozisyonu için yüksek bir gidona sahiptir.
Yine islak zeminlerden geçerken üstümüzün kirlenmemesi için çamurluklari vardir.
<br><br>','(+)&nbsp; Sehir içinde ulasim amaçli kullanim. <br>','(-)&nbsp; Offroad ve uzun yol için yorucu olacaktir. Yol bisikleti kadar hizlanmazlar.',5),
											('<h2>Tur Bisikleti</h2>','Tur bisikletleri, yol bisikletleri gibidir. Ama özellikle uzun mesafeler yük tasimak için tasarlanmislardir. 
<br>
Yol bisikleti gibi ince bir gövde, ince tekerler fakat yol bisikletinden farkli olarak biraz daha tirtiklidir. 
<br>
Heybe için bir arka bagaj, çamurluklar ve sadece biraz daha fazla kalin dekerleri vardir. 
<br>
Hibrit bisiklet olarak ta kullanilabilirler.
<br><br>
<h4>Tur bisikletinin karakteristigi su sekildedir: </h4>

<dfn>&emsp;Daha hafif kadro, ince tirtikli tekerler, egimli ya da düz bir gidon.</dfn> <br><br>','(+)&nbsp; Uzun mesafeler için tasarlanmistir. Fikrinizi degistirirseniz birkaç degisiklikle hibrit bisiklete dönüstürebilirsiniz. <br>','(-)&nbsp; Hiz için, off-road için kullanilmamali.',6),
											('<h2>Katlanir Bisiklet</h2>','&emsp;Katlanir bisikletler adindan da anlasilacagi üzere katlanabilen portatif bisikletlerdir. 
<br>
Küçük boyutlara inebildigi için ev ortaminda yer kaplamaz ve saklanmasi daha kolay olur. 
<br>
Dag bisikleti gibi büyük tekerlekli modelleri de olsa da katlanir bisikletin küçük tekerli olanlari daha yaygindir. 
<br>
Böylece katlandiginda daha küçük boyutlara ulasabilir. 
<br>
Bu tip bisikletler küçük teker kullandigindan bu tekerlerin daha kolay döndürülmesi için bisikletin ön dislileri daha büyük tasarlanir. 
<br>
Böylece bisiklet daha hizli yol alabilir. 
<br> <br>
Son zamanlarda popülerliginin artma sebebi bu bisikletin boyutlarindan ötürü toplu tasimada da kabul görmesindendir. 
<br>
Ülkemizde normal bisikletler yogun saatlerde metro ve toplu tasima araçlarina alinmazken katlanir bisikletler için böyle bir kisitlama yoktur. 
<br> <br>
Okula giderken, ise giderken, toplu tasima ile birlikte kullanildiginda katlanir bisikletler günlük hayatimizda ulasimi pratik ve saglikli bir aktiviteye dönüstürüyor. 
<br>
<br><br>
<h4>Genel özellikleri: </h4>

<dfn>&emsp;Katlanir gövde ve küçük tekerler, yüksek arka-ön disli orani.</dfn> 
<br><br>','(+)&nbsp; Esneklik, portatiflik, toplu tasima ile kullanilabilmesi, yer kaplamamasi. <br>','(-)&nbsp; Yüksek hizlara çikmaz, engebeli arazide kullanima uygun degildir, yokus çikmasi zor olabilir.',7),
											('<h2>Kadin Bisikleti</h2>',' Kadin bisikletleri kadinlar için tasarlanmistir. Kadrolari daha küçük olabilir, kadro tasarimlari da kadinlarin kullanimi için farkli bir yapiya sahiptir. 
<br>
Tabi böyle bir kategori olmasi diger bisikletleri erkek bisikleti yapmaz, kadin bisikleti etekle kullanima olanak sagladigindan dolayi böyle adlandirilmistir. 
<br>
<br><br>
<h4>Karakter: </h4>
<dfn>&emsp;Daha küçük ve hafif gövde, bazen daha dar bir gidon olabilir.</dfn> 
<br><br>','(+)&nbsp; Kullanicisina göre daha kullanisli bulunabilir. <br>','(-)&nbsp; Kullanici belki standart kadro bisikletleri begenebilir.',8),
											('<h3>Piskulet.com a Hos Geldiniz.</h3>','<h2>Farkli Aktiviteler Için Farkli Bisikletler</h2>
<p>Bisikletler kullanim amacina göre degisen özelliklerle üretilirler.
Örnek vermek gerekirse düzgün bir zeminde kullanilmasi için üretilen 
ve engebeli zeminlerde kullanilmasi için üretilen bisikletler arasinda
önemli farklar vardir. Bundan dolayi ilk bisikletinize sahip olmadan önce
onu nasil kullanacaginiza karar vermeniz yeni bisikletinizi seçerken size yol gösterecektir.
<br><br>
Onu ulasim için mi kullanacaksiniz? Spor için mi? Yasadiginiz yerde yollar düzgün mü?
<br><br>
Bisiklete yeni baslayan çogu insan dag bisikletini tercih eder. Bu yollari bozuk bir sehirde yasiyorsaniz yada onu gerçekten dagda kullanacaksaniz güzel bir fikirdir. Fakat onu hiz yapmak için kullanmaniz yorucu olabilir.
<br><br>
Baslamadan önce sizin için kullanim amaçlarina göre siniflandirdigimiz bisiklet türlerine bir göz atalim:
<br><br>
<ul>
<li><strong>Yol Bisikleti:</strong> Yollarda</li>                                    
<li><strong>Dag Bisikleti:</strong> Arazide</li>
<li><strong>Hybrid / commuter:</strong> Herseyden biraz.</li>
<li><strong>Cyclocross bisiklet:</strong> Herseyden biraz, ama yol bisikleti hissiyati</li>
<li><strong>Katlanir bisiklet:</strong> Ulasim, kisa mesafe turlari</li>
<li><strong>Tur bisikleti:</strong> Uzun mesafe yük tasimaya müsait</li>
<li><strong>Kadin bisikleti:</strong> Yukaridakilerin hepsi, kadin için.</li>
</ul>
</p>',null,null,null);


CREATE TABLE contact
(Id INT PRIMARY KEY IDENTITY,
ad VARCHAR(50) not null,
soyad VARCHAR(MAX),
cinsiyet varchar(1),
bike_Id INT FOREIGN KEY REFERENCES bikes(Id),
mobil VARCHAR(11),
email varchar(100),
mesaj varchar(max) not null);

