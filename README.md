## PART 1
1. Apa saja pesan log yang dicetak pada panel Output?
- Log yang dicetak -> 'Platform initialized' lalu ketika sudah capai objective 'Reached objective!'
2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
- Mengulang mencetak yang sama -> 'Reached objective!'
3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
- Benar, karena terlihat dari ObjectiveArea.gd, terlihat pada fungsi body_entered, yakni ketika body merupakan Blueship/ ketika Blueship mencapai objective, maka akan print'Reached objective!'

## PART 2
1.  _Scene_ `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah _child node_
  bertipe `Sprite`. Apa fungsi dari _node_ bertipe `Sprite`?
- Node bertipe Sprite pada Godot digunakan untuk menampilkan gambar atau tekstur di dalam permainan. Hal ini merupakan node khusus yang berfungsi sebagai wadah untuk menampilkan grafis. 
2. _Root node_ dari _scene_ `BlueShip` dan `StonePlatform` menggunakan tipe yang
  berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform`
  menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe _node_?
- RigidBody2D digunakan untuk objek yang memiliki fisik dinamis. Artinya, objek ini dapat mengalami perubahan posisi, rotasi, dan kecepatan dalam respons terhadap gaya dan kekuatan yang bekerja padanya. Memiliki mass dan respons terhadap gaya, gravitasi.
- StaticBody2D digunakan untuk objek yang tetap diam dan tidak terpengaruh oleh fisika lainnya. Artinya, objek ini tidak memiliki massa dan tidak merespons gaya atau kekuatan eksternal. Cocok untuk objek yang seharusnya tetap di tempat tanpa bergerak, seperti platform, lantai, atau elemen lingkungan lainnya. Pada tutorial ini, StaticBody2D dapat bergerak karena ditambahkan script
3. Ubah nilai atribut `Mass` dan `Weight` pada tipe `RigidBody2D` secara
  bebas di _scene_ `BlueShip`, lalu coba jalankan _scene_ `Main`. Apa yang
  terjadi?
- Setelah saya coba mengganti ternyata tidak terjadi perbedaan. Hal ini terjadi karena RigidBody2D mengikuti prinsip-prinsip fisika, termasuk tetapi tidak terbatas pada pengaruh gravitasi bumi dengan percepatan sekitar 9.8 m/s^2. Kecepatan jatuh suatu objek bukanlah dipengaruhi oleh berat objek itu sendiri, melainkan oleh gaya gravitasi yang diterapkan padanya. Oleh karena itu, objek yang lebih berat mengalami gaya gravitasi yang lebih besar, tetapi tetap memiliki percepatan yang sama dalam gravitasi bumi.
4. Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di _scene_
  `StonePlatform`, lalu coba jalankan _scene_ `Main`. Apa yang terjadi?
- Objek BlueShip jatuh melewati objek StonePlatform.
5. Pada _scene_ `Main`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale`
  milik _node_ `BlueShip` secara bebas. Apa yang terjadi pada visualisasi
  `BlueShip` di Viewport?
- Dengan mengubah Position akan memindahkan BlueShip ke lokasi yang berbeda di dalam viewport. Lalu, mengubah Scale akan merubah dimensi BlueShip, sementara merotasi akan memutar BlueShip sesuai dengan orientasi yang diinginkan.
6. Pada _scene_ `Main`, perhatikan nilai atribut `Position` _node_ `PlatformBlue`,
  `StonePlatform`, dan `StonePlatform2`. Mengapa nilai `Position` _node_
  `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam
  _scene_ (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
- Hal ini terjadi karena Position dari StonePlatform dan StonePlatform2 relatif terhadap parent node nya, yakni PlatformBlue.