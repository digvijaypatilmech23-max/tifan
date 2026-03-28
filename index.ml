<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Krishi Smart Plantation System</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
  <style>
    :root {
      --jd-green: #367C2B;
      --jd-yellow: #FFDE00;
      --dark-bg: #0a0a0a;
      --card-bg: #1a1a1a;
      --text-gray: #a0a0a0;
    }
    body, html {
      margin: 0; padding: 0;
      font-family: 'Inter', sans-serif;
      background-color: var(--dark-bg);
      color: white;
      scroll-behavior: smooth;
    }
    nav {
      position: fixed; top: 0; left: 0; width: 100%;
      background: #111; padding: 15px;
      display: flex; justify-content: center; gap: 30px;
      z-index: 1000;
    }
    nav a {
      color: white; text-decoration: none; font-weight: 600;
    }
    nav a:hover { color: var(--jd-green); }
    section { min-height: 100vh; padding: 80px 20px; }
    h1, h2 { text-align: center; }
    .btn-main {
      background: var(--jd-green); color: white; border: none;
      padding: 15px 40px; font-size: 1.2rem; font-weight: 800;
      border-radius: 50px; cursor: pointer;
      transition: transform 0.3s, background 0.3s;
    }
    .btn-main:hover { background: #45a049; transform: scale(1.05); }
    .card { background: var(--card-bg); padding: 25px; border-radius: 15px; margin: 15px; text-align: center; }
    .contact-form { max-width: 500px; margin: auto; display: flex; flex-direction: column; gap: 15px; }
    .contact-form input, .contact-form textarea {
      padding: 10px; border-radius: 8px; border: none; font-size: 1rem;
    }
    .contact-form button { align-self: center; }
  </style>
</head>
<body>

  <!-- Navigation -->
  <nav>
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#dashboard">Dashboard</a>
    <a href="#contact">Contact</a>
  </nav>

  <!-- Home -->
  <section id="home">
    <h1>Welcome to Krishi Smart Plantation System</h1>
    <p style="text-align:center; max-width:600px; margin:auto;">
      Smart farming with real-time analytics, field mapping, and automation.
    </p>
    <div style="text-align:center; margin-top:30px;">
      <a href="#dashboard"><button class="btn-main">View Dashboard</button></a>
    </div>
  </section>

  <!-- About -->
  <section id="about">
    <h2>About the System</h2>
    <div style="max-width:800px; margin:auto; text-align:center;">
      <p>
        The Krishi Smart Plantation System helps farmers automate sapling plantation,
        track progress in real-time, and analyze efficiency. It reduces missed seeds,
        improves accuracy, and provides actionable insights.
      </p>
      <div style="display:flex; justify-content:center; flex-wrap:wrap;">
        <div class="card">🚜 Tractor Automation</div>
        <div class="card">🌱 Sapling Tracking</div>
        <div class="card">📊 Analytics Dashboard</div>
        <div class="card">🗺️ Field Mapping</div>
      </div>
    </div>
  </section>

  <!-- Dashboard -->
  <section id="dashboard">
    <h2>📊 Plantation Analytics</h2>
    <div style="display:flex; flex-wrap:wrap; justify-content:center;">
      <div class="card"><h3>Speed</h3><div id="speed">4.2 km/h</div></div>
      <div class="card"><h3>Distance</h3><div id="dist">152 m</div></div>
      <div class="card"><h3>Saplings Dropped</h3><div id="dropped">612</div></div>
      <div class="card"><h3>Planted</h3><div id="planted">598</div></div>
      <div class="card"><h3>Missed</h3><div id="missed">14</div></div>
    </div>
    <div style="margin-top:40px; text-align:center;">
      <h3>🗺️ Real-time Field Mapping</h3>
      <div id="fieldGrid" style="display:grid; grid-template-columns:repeat(20,1fr); gap:5px; margin-top:20px;"></div>
    </div>
  </section>

  <!-- Contact -->
  <section id="contact">
    <h2>Contact Us</h2>
    <form class="contact-form">
      <input type="text" placeholder="Your Name" required>
      <input type="email" placeholder="Your Email" required>
      <textarea rows="5" placeholder="Your Message"></textarea>
      <button class="btn-main" type="submit">Send Message</button>
    </form>
  </section>

  <script>
    // Demo grid
    const grid = document.getElementById('fieldGrid');
    for(let i=0; i<60; i++){
      const cell = document.createElement('div');
      cell.style.background = Math.random()>0.1 ? '#367C2B' : '#e74c3c';
      cell.style.aspectRatio = '1';
      grid.appendChild(cell);
    }
  </script>
</body>
</html>
