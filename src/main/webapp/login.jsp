<%--
  Created by IntelliJ IDEA.
  User: macie
  Date: 30.11.2021
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="user">
    <header class="user__header">
        <link rel="stylesheet" href="style/register.css">

        <h1 class="user__title">Login</h1>
    </header>

    <form class="form">

        <div class="form__group">
            <input type="email" placeholder="Email" class="form__input" />
        </div>

        <div class="form__group">
            <input type="password" placeholder="Hasło" class="form__input" />

        </div>
        <div>
        <button class="btn" type="button"> Login </button>
        </div>
    </form>

    <form action="main.jsp">
        <button type="submit">Strona Główna</button>
    </form>

    <form action="register.jsp">
        <button type="submit">Rejestracja</button>
    </form>

</div>