<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Portail d'authentification sécurisé du ministère">
  <title>Se connecter</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
    :root {
      --primary-red: #ea2031;
      --primary-blue: #2c5aa0;
      --dark-blue: #1E4687;
      --white: #FFFFFF;
      --light-gray: #F8F8F8;
      --medium-gray: #CCCCCC;
      --dark-gray: #555555;
      --text-dark: #333333;
      --shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      --shadow-hover: 0 6px 16px rgba(0, 0, 0, 0.15);
      --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Montserrat', sans-serif;
      background: linear-gradient(160deg, var(--primary-red) -37.19%, var(--primary-blue) 74.68%),
                  url("${url.resourcesPath}/img/bg_auth.svg") no-repeat center/cover;
      background-blend-mode: color, normal;
      color: var(--white);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 40px 20px;
      line-height: 1.6;
    }

    .top-bar {
      width: 100%;
      max-width: 1200px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 30px;
    }

    .logo-section {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .logo {
      width: 120px;
      height: 40px;
      background: url("${url.resourcesPath}/img/logo.png") no-repeat center/contain;
      background-color: var(--white);
      border-radius: 4px;
      padding: 5px;
      transition: var(--transition);
    }

    .logo:hover {
      transform: scale(1.03);
    }

    .separator {
      width: 2px;
      height: 24px;
      background-color: var(--white);
      opacity: 0.7;
    }

    .innova-text {
      font-weight: 600;
      font-size: 18px;
      color: var(--white);
    }

    .language-selector {
      position: relative;
    }

    .language-button {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 16px;
      background: rgba(255, 255, 255, 0.1);
      border-radius: 20px;
      border: none;
      color: var(--white);
      font-family: 'Montserrat', sans-serif;
      font-size: 14px;
      font-weight: 500;
      cursor: pointer;
      transition: var(--transition);
    }

    .language-button:hover {
      background: rgba(255, 255, 255, 0.2);
    }

    .flag {
      width: 20px;
      height: 20px;
      background-size: contain;
      background-repeat: no-repeat;
      background-position: center;
      border-radius: 50%;
    }

    .language-dropdown {
      position: absolute;
      right: 0;
      top: 100%;
      background: var(--white);
      min-width: 140px;
      border-radius: 8px;
      box-shadow: var(--shadow-hover);
      overflow: hidden;
      opacity: 0;
      visibility: hidden;
      transform: translateY(10px);
      transition: var(--transition);
      z-index: 100;
    }

    .language-selector:hover .language-dropdown {
      opacity: 1;
      visibility: visible;
      transform: translateY(0);
    }

    .language-option {
      padding: 10px 16px;
      display: flex;
      align-items: center;
      gap: 10px;
      color: var(--text-dark);
      text-decoration: none;
      transition: background 0.2s ease;
    }

    .language-option:hover {
      background: var(--light-gray);
    }

    .card {
      background: var(--white);
      border-radius: 16px;
      box-shadow: var(--shadow-hover);
      width: 100%;
      max-width: 480px;
      text-align: center;
      overflow: hidden;
      margin-bottom: 15px;
      transform: translateY(0);
      transition: var(--transition);
      margin-top: 20px;
    }

    @media (max-width: 480px) {
      .card {
        margin-top: 40px;
      }
    }

    .card:hover {
      transform: translateY(-5px);
    }

    .card-header {
      background: linear-gradient(90deg, var(--primary-red), var(--primary-blue));
      padding: 12px;
    }

    .card-content {
      padding: 30px;
    }

    .header h1 {
      font-size: 26px;
      font-weight: 700;
      color: var(--primary-blue);
      margin-bottom: 8px;
    }

    .header p {
      font-size: 14px;
      color: var(--dark-gray);
      line-height: 1.5;
    }

    .form-group {
      margin-top: 25px;
      text-align: left;
      position: relative;
    }

    .form-group label {
      display: block;
      font-weight: 600;
      font-size: 14px;
      margin-bottom: 8px;
      color: var(--text-dark);
    }

    .form-group label span.required {
      color: var(--primary-red);
    }

    .input-container {
      position: relative;
    }

    .form-group input {
      width: 100%;
      padding: 14px 15px 14px 45px;
      border: 1px solid var(--medium-gray);
      border-radius: 8px;
      font-size: 15px;
      background-color: var(--light-gray);
      font-family: 'Montserrat', sans-serif;
      transition: var(--transition);
    }

    .form-group input:focus {
      border-color: var(--primary-blue);
      box-shadow: 0 0 0 3px rgba(44, 90, 160, 0.15);
      outline: none;
      background-color: var(--white);
    }

    .input-icon {
      position: absolute;
      left: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--primary-blue);
      font-size: 16px;
    }

    .password-toggle {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--primary-blue);
      cursor: pointer;
      font-size: 16px;
      transition: var(--transition);
      z-index: 2;
    }

    .password-toggle:hover {
      color: var(--dark-blue);
      transform: translateY(-50%) scale(1.1);
    }

    .btn {
      margin-top: 30px;
      width: 100%;
      padding: 15px;
      background: var(--primary-blue);
      border-radius: 8px;
      color: var(--white);
      font-size: 16px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
      overflow: hidden;
    }

    .btn:hover {
      background: var(--dark-blue);
      transform: translateY(-2px);
      box-shadow: var(--shadow-hover);
    }

    .btn:active {
      transform: translateY(0);
    }

    .btn-loading .btn-text {
      visibility: hidden;
      opacity: 0;
    }

    .btn-loading::after {
      content: "";
      position: absolute;
      width: 20px;
      height: 20px;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      margin: auto;
      border: 3px solid transparent;
      border-top-color: var(--white);
      border-radius: 50%;
      animation: button-loading-spinner 1s ease infinite;
    }

    @keyframes button-loading-spinner {
      from {
        transform: rotate(0turn);
      }
      to {
        transform: rotate(1turn);
      }
    }

    .home-button {
      display: block;
      padding: 15px;
      background: linear-gradient(90deg, var(--primary-red), var(--primary-blue));
      color: var(--white);
      font-size: 15px;
      font-weight: 600;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      width: 100%;
      max-width: 480px;
      transition: var(--transition);
      margin-top: 10px;
      box-shadow: var(--shadow);
    }

    .home-button:hover {
      transform: translateY(-2px);
      box-shadow: var(--shadow-hover);
    }

    .error-message {
      color: var(--primary-red);
      font-size: 14px;
      margin-top: 10px;
      text-align: center;
      padding: 12px;
      background-color: rgba(234, 32, 49, 0.1);
      border-radius: 8px;
      border-left: 4px solid var(--primary-red);
      animation: fadeIn 0.3s ease-out;
    }

    .info-message {
      color: var(--primary-blue);
      font-size: 14px;
      margin-top: 10px;
      text-align: center;
      padding: 12px;
      background-color: rgba(44, 90, 160, 0.1);
      border-radius: 8px;
      border-left: 4px solid var(--primary-blue);
      animation: fadeIn 0.3s ease-out;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(-10px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @media (max-width: 768px) {
      body { padding: 30px 20px; }
      .top-bar { margin-bottom: 20px; }
      .logo { width: 100px; height: 36px; }
      .card { max-width: 420px; }
    }

    @media (max-width: 480px) {
      body { padding: 25px 15px; }
      .top-bar { margin-bottom: 15px; }
      .logo { width: 90px; height: 32px; }
      .innova-text { font-size: 16px; }
      .card-content { padding: 25px 20px; }
      .header h1 { font-size: 24px; }
      .form-group input { padding: 12px 15px 12px 40px; font-size: 14px; }
      .btn, .home-button { padding: 14px; font-size: 15px; }
    }
  </style>
</head>
<body>
  <div class="top-bar">
    <div class="logo-section">
      <div class="logo" role="img" aria-label="Logo du ministère"></div>
      <div class="separator" aria-hidden="true"></div>
      <span class="innova-text">INNOVA</span>
    </div>
    <div class="language-selector">
      <button class="language-button" id="currentLanguageButton" aria-expanded="false" aria-haspopup="true" aria-label="Changer la langue">
        <div class="flag" id="currentFlag" style="background-image: url('${url.resourcesPath}/img/fr.png')" aria-hidden="true"></div>
        <span id="currentLanguageLabel">Français</span>
        <i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="language-dropdown" role="menu" aria-labelledby="currentLanguageButton">
        <a href="javascript:void(0)" class="language-option" data-lang="fr" role="menuitem" tabindex="-1">
          <div class="flag" style="background-image: url('${url.resourcesPath}/img/fr.png')" aria-hidden="true"></div>
          <span>Français</span>
        </a>
        <a href="javascript:void(0)" class="language-option" data-lang="en" role="menuitem" tabindex="-1">
          <div class="flag" style="background-image: url('${url.resourcesPath}/img/gb.png')" aria-hidden="true"></div>
          <span>English</span>
        </a>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card-header" role="presentation"></div>
    <div class="card-content">
      <div class="header">
        <h1 id="loginTitle">Se connecter</h1>
        <p id="loginSubtitle">Veuillez vous identifier</p>
      </div>
      <form id="kc-form-login" action="${url.loginAction}" method="post">
        <#if message??>
          <#if message.type = 'error'>
            <div class="error-message" role="alert">
              <i class="fas fa-exclamation-circle" aria-hidden="true"></i> ${message.summary}
            </div>
          <#elseif message.type = 'warning'>
            <div class="info-message" role="alert">
              <i class="fas fa-exclamation-triangle" aria-hidden="true"></i> ${message.summary}
            </div>
          <#elseif message.type = 'success'>
            <div class="info-message" role="alert">
              <i class="fas fa-check-circle" aria-hidden="true"></i> ${message.summary}
            </div>
          <#else>
            <div class="info-message" role="alert">
              <i class="fas fa-info-circle" aria-hidden="true"></i> ${message.summary}
            </div>
          </#if>
        </#if>
        
        <div class="form-group">
          <label for="username"><span id="usernameLabel">Identifiant</span> <span class="required">*</span></label>
          <div class="input-container">
            <i class="fas fa-user input-icon" aria-hidden="true"></i>
            <input type="text" id="username" name="username" value="${(login.username!'')}" 
                   placeholder="Saisissez votre identifiant" required
                   aria-required="true" autocomplete="username">
          </div>
        </div>
        
        <div class="form-group">
          <label for="password"><span id="passwordLabel">Mot de passe</span> <span class="required">*</span></label>
          <div class="input-container">
            <i class="fas fa-lock input-icon" aria-hidden="true"></i>
            <input type="password" id="password" name="password" 
                   placeholder="Saisissez votre mot de passe" required
                   aria-required="true" autocomplete="current-password">
            <i class="far fa-eye-slash password-toggle" id="togglePassword" 
               aria-label="Afficher le mot de passe" role="button" tabindex="0"></i>
          </div>
        </div>
        
        <button type="submit" class="btn" id="kc-login">
          <span class="btn-text" id="loginButtonText">Se connecter</span>
        </button>
      </form>
    </div>
  </div>

  <a href="http://emes.bj:3000" class="home-button">
    <i class="fas fa-arrow-left" style="margin-right: 8px;"></i>
    <span id="backToHomeText">Retourner à la page d'accueil</span>
  </a>

  <script>
    document.addEventListener('DOMContentLoaded', function() {
      // Toggle password visibility
      const togglePassword = document.getElementById('togglePassword');
      const password = document.getElementById('password');
      
      if (togglePassword && password) {
        const togglePasswordHandler = function(e) {
          if (e.type === 'click' || (e.type === 'keydown' && e.key === 'Enter')) {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            togglePassword.classList.toggle('fa-eye-slash');
            togglePassword.classList.toggle('fa-eye');
            togglePassword.setAttribute('aria-label', 
              type === 'password' ? 'Afficher le mot de passe' : 'Masquer le mot de passe');
          }
        };
        
        togglePassword.addEventListener('click', togglePasswordHandler);
        togglePassword.addEventListener('keydown', togglePasswordHandler);
      }

      // Language texts
      const translations = {
        fr: {
          loginTitle: "Se connecter",
          loginSubtitle: "Veuillez vous identifier",
          usernameLabel: "Identifiant",
          usernamePlaceholder: "Saisissez votre identifiant",
          passwordLabel: "Mot de passe",
          passwordPlaceholder: "Saisissez votre mot de passe",
          loginButtonText: "Se connecter",
          backToHomeText: "Retourner à la page d'accueil",
          showPassword: "Afficher le mot de passe",
          hidePassword: "Masquer le mot de passe"
        },
        en: {
          loginTitle: "Sign in",
          loginSubtitle: "Please identify yourself",
          usernameLabel: "Username",
          usernamePlaceholder: "Enter your username",
          passwordLabel: "Password",
          passwordPlaceholder: "Enter your password",
          loginButtonText: "Sign in",
          backToHomeText: "Return to home page",
          showPassword: "Show password",
          hidePassword: "Hide password"
        }
      };

      // Language change handling
      document.querySelectorAll('.language-option').forEach(option => {
        option.addEventListener('click', function(e) {
          e.preventDefault();
          const lang = this.getAttribute('data-lang');
          
          // Update UI immediately
          document.getElementById('currentFlag').style.backgroundImage = 
            lang === 'en' 
              ? "url('${url.resourcesPath}/img/gb.png')" 
              : "url('${url.resourcesPath}/img/fr.png')";
          document.getElementById('currentLanguageLabel').textContent = 
            lang === 'en' ? 'English' : 'Français';
          
          // Update all texts
          const texts = translations[lang];
          document.getElementById('loginTitle').textContent = texts.loginTitle;
          document.getElementById('loginSubtitle').textContent = texts.loginSubtitle;
          document.getElementById('usernameLabel').textContent = texts.usernameLabel;
          document.getElementById('passwordLabel').textContent = texts.passwordLabel;
          document.getElementById('username').placeholder = texts.usernamePlaceholder;
          document.getElementById('password').placeholder = texts.passwordPlaceholder;
          document.getElementById('loginButtonText').textContent = texts.loginButtonText;
          document.getElementById('backToHomeText').textContent = texts.backToHomeText;
          
          // Update password toggle aria-label if it's visible
          if (password.getAttribute('type') === 'password') {
            togglePassword.setAttribute('aria-label', texts.showPassword);
          } else {
            togglePassword.setAttribute('aria-label', texts.hidePassword);
          }
        });
      });

      // Form submission loading indicator
      const form = document.getElementById('kc-form-login');
      if (form) {
        form.addEventListener('submit', function() {
          const submitButton = document.getElementById('kc-login');
          if (submitButton) {
            submitButton.classList.add('btn-loading');
            submitButton.disabled = true;
          }
        });
      }

      // Focus management
      const usernameField = document.getElementById('username');
      const passwordField = document.getElementById('password');
      
      if (usernameField && usernameField.value === '' && !passwordField.value) {
        usernameField.focus();
      } else if (passwordField && passwordField.value === '') {
        passwordField.focus();
      } else if (usernameField) {
        usernameField.focus();
      }
    });
  </script>
</body>
</html>
