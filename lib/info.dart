const info = [
  {
    'name': 'Elon Musk',
    'message': 'Hey, planning a trip to Mars soon?',
    'time': '3:53 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'Ada Lovelace',
    'message': 'Greetings, fellow coder!',
    'time': '2:25 pm',
    'profilePic':
        'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg',
  },
  {
    'name': 'Galadriel',
    'message': 'Hello, I wish to visit the Shire.',
    'time': '1:03 pm',
    'profilePic':
        'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg',
  },
  {
    'name': 'Sherlock Holmes',
    'message': 'The game is afoot!',
    'time': '12:06 pm',
    'profilePic':
        'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
  },
  {
    'name': 'Marie Curie',
    'message': 'Have you discovered any new elements today?',
    'time': '10:00 am',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
  },
  {
    'name': 'Hermione Granger',
    'message': 'Yo!!!!! Long time, no see!?',
    'time': '9:53 am',
    'profilePic':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Alan Turing',
    'message': 'Am I a machine or a human?',
    'time': '7:25 am',
    'profilePic':
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Nikola Tesla',
    'message': 'I am from the future!',
    'time': '6:02 am',
    'profilePic':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Captain Jack Sparrow',
    'message': 'Let’s sail the seven seas!',
    'time': '4:56 am',
    'profilePic':
        'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Leonardo da Vinci',
    'message': 'Painting the Mona Lisa, need inspiration!',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
];

const messages = [
  {
    "isMe": false,
    "text": "Hey, planning a trip to Mars soon?",
    "time": "10:00 am"
  },
  {
    "isMe": true,
    "text": "Yes, just packing my space suit!",
    "time": "11:00 am"
  },
  {"isMe": false, "text": "That sounds like an adventure!", "time": "11:01 am"},
  {"isMe": false, "text": "Can I join your mission?", "time": "11:01 am"},
  {
    "isMe": true,
    "text": "Absolutely, the more the merrier!",
    "time": "11:03 am"
  },
  {
    "isMe": false,
    "text": "Great! I'll bring snacks for the journey.",
    "time": "11:04 am"
  },
  {
    "isMe": true,
    "text": "Perfect, we need snacks for interstellar travel!",
    "time": "11:05 am"
  },
  {
    "isMe": false,
    "text": "Count me in for the Mars adventure!",
    "time": "11:06 am"
  },
  {
    "isMe": true,
    "text": "Looking forward to exploring the red planet together!",
    "time": "11:15 am"
  },
  {"isMe": false, "text": "Let's make history!", "time": "11:17 am"},
  {"isMe": false, "text": "Ready for liftoff?", "time": "11:16 am"},
  {
    "isMe": true,
    "text": "Buckle up, it's going to be an epic journey!",
    "time": "11:17 am"
  },
  {"isMe": false, "text": "Countdown begins!", "time": "11:18 am"},
  {"isMe": true, "text": "T-10, T-9, T-8...", "time": "11:19 am"},
  {"isMe": false, "text": "Ignition sequence initiated!", "time": "11:20 am"},
];
