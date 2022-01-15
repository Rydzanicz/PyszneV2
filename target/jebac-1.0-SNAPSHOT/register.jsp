<%--
  Created by IntelliJ IDEA.
  User: macie
  Date: 30.11.2021
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="user">
    <header class="user__header">
        <link rel="stylesheet" href="style/register.css">
        <title>Smacznego</title>
        <h1 class="user__title">Rejestracja</h1>
    </header>

    <form class="form">
        <div class="form__group">
            <input type="text" placeholder="Username" class="form__input" />
        </div>

        <div class="form__group">
            <input type="email" placeholder="Email" class="form__input" />
        </div>

        <div class="form__group">
            <input type="password" placeholder="Password" class="form__input" />
        </div>
        <div class="form__group">
            <input type="text" placeholder="Phone-Number" class="form__input" />
        </div>
        <div class="form__group">
            <input type="text" placeholder="Address" class="form__input" />
        </div>

        <div>
        <button class="btn" type="button">Rejestracja</button>
        </div>

    </form>
   <form action="main.jsp">
    <button type="submit">Strona Główna</button>
    </form>
</div>