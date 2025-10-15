<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("loginTitle")}</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #D4D1D1;
        }
        .btn-orange {
            background-color: #F0A945;
        }
        .btn-orange:hover {
            background-color: #d98a2e;
        }
        .btn-blue {
            background-color: #3B5F83;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            margin-bottom: 20px;
            width: 100%;
            text-align: center;
        }
        .btn-blue:hover {
            background-color: #2d4a66;
        }
        .header-bg {
            background-color: #0A3764;
            border-bottom: 1px solid #CCCCCC;
        }
        .footer-bg {
            background-color: #2f2b45;
            color: white;
            border-top: 5px solid #0A3764;
        }
        .shadow-light {
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .shadow-button {
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }
        .transition-all {
            transition: all 0.3s ease;
        }
        .text-gray-custom {
            color: #212529;
        }
        .form-label {
            font-size: 0.75rem;
            font-weight: 400;
            color: #6B7280;
            margin-bottom: 0.25rem;
        }
        .form-input {
            border: 1px solid #D1D5DB;
            padding: 0.75rem;
            border-radius: 0.375rem;
            background-color: #F9FAFB;
            color: #212529;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .form-input:focus {
            border-color: #3B5F83;
            box-shadow: 0 0 0 3px rgba(59, 95, 131, 0.3);
            outline: none;
        }
    </style>
</head>
<body class="bg-gray-100 flex flex-col justify-between items-center h-screen">
    <!-- Header -->
    <header class="w-full header-bg p-4 text-center">
        <h1 class="text-2xl font-bold text-white">OCVT</h1>
        <p class="text-sm text-white mt-2">OBSERVATOIRE INNOVA</p>
    </header>

    <!-- Main Content -->
    <main class="flex-grow flex flex-col justify-center items-center my-8 w-full max-w-lg">
        <a href="#" class="btn-blue w-full">Retour à l'accueil</a>
        <div class="bg-white p-8 rounded-lg shadow-light w-full text-center">
            <h2 class="text-2xl font-bold text-gray-custom mb-6">Se connecter</h2>
            <p class="text-gray-custom mb-6">Veuillez vous identifier</p>
            <form id="loginForm" action="${url.loginAction}" method="post">
                <div class="mb-4 text-left">
                    <label for="username" class="form-label">${msg("username")}</label>
                    <input type="text" id="username" name="username" placeholder="${msg("username")}" required class="form-input w-full">
                </div>
                <div class="mb-4 text-left">
                    <label for="password" class="form-label">${msg("password")}</label>
                    <input type="password" id="password" name="password" placeholder="${msg("password")}" required class="form-input w-full">
                </div>
                <div class="flex items-center mb-4 text-left">
                    <input type="checkbox" id="rememberMe" class="mr-2">
                    <label for="rememberMe" class="text-gray-custom">Se souvenir de moi</label>
                </div>
                <button type="submit" class="w-full p-3 btn-orange text-white rounded hover:bg-orange-600 transition-all shadow-button">${msg("doLogIn")}</button>
            </form>
            <a href="#" class="text-blue-500 mt-8 block hover:underline">Mot de passe oublié ? Réinitialiser</a>
            <a href="register.html" class="text-blue-500 mt-4 block hover:underline">Pas encore de compte ? S'inscrire</a>
            <a href="#" class="text-blue-500 mt-4 block hover:underline">Activer la 2FA</a>
        </div>
    </main>

    <!-- Footer -->
    <footer class="w-full footer-bg p-8 text-white">
        <div class="text-center">
            <p>MCVT • 2025</p>
        </div>
    </footer>
</body>
</html>
