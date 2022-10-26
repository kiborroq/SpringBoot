<#import "/spring.ftl" as spring />
<html>
<head>
  <title>SignUp</title>
</head>
<style>
    form {width: 400px; margin: auto}
    input[type=text], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 0 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }
    .field {
        margin-bottom: 20px;
        height: 80px;
    }
    input[type=text]:focus, input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }
    .registerbtn {
        background-color: #5237d5;
        color: white;
        padding: 16px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 400px;
        opacity: 0.9;
    }
    .registerbtn:hover {
        opacity:1;
        cursor: pointer;
    }
    .error {
        margin: 2px 0 0;
        font-size: 10pt;
        color: #c41515;
        font-weight: 100;
    }
</style>
<body>
<form action="/signUp" method="post">
  <div class="container">
    <h1 style="text-align: center"><@spring.message "registration"/></h1>
    <hr>

    <div class="field">
      <label for="firstName"><b><@spring.message "firstName"/></b></label>
      <input autocomplete="false" type="text" placeholder="<@spring.message "enterFirstName"/>" name="firstName" id="firstName"
             value="<#if user?? && user.firstName??>${user.firstName}<#else></#if>">
      <p class="error">
          <@spring.bind "user.firstName"/>
          <@spring.showErrors "" ""/>
      </p>
    </div>

    <div class="field">
      <label for="lastName"><b><@spring.message "lastName"/></b></label>
      <input autocomplete="false" type="text" placeholder="<@spring.message "enterLastName"/>" name="lastName" id="lastName"
             value="<#if user?? && user.lastName??>${user.lastName}<#else></#if>">
      <p class="error">
          <@spring.bind "user.lastName"/>
          <@spring.showErrors "" ""/>
      </p>
    </div>

    <div class="field">
      <label for="phone"><b><@spring.message "phone"/></b></label>
      <input autocomplete="false" type="text" placeholder="<@spring.message "enterPhone"/>" name="phone" id="email"
             value="<#if user?? && user.phone??>${user.phone}<#else></#if>">
      <p class="error">
          <@spring.bind "user.phone"/>
          <@spring.showErrors "" ""/>
      </p>
    </div>

    <div class="field">
      <label for="email"><b><@spring.message "email"/></b></label>
      <input autocomplete="false" type="text" placeholder="<@spring.message "enterEmail"/>" name="email" id="email"
             value="<#if user?? && user.email??>${user.email}<#else></#if>">
      <p class="error">
          <@spring.bind "user.email"/>
          <@spring.showErrors "" ""/>
      </p>
    </div>

    <div class="field">
      <label for="password"><b><@spring.message "password"/></b></label>
      <input autocomplete="false" type="password" placeholder="<@spring.message "enterPassword"/>" name="password" id="password" value="">
      <p class="error">
          <@spring.bind "user.password"/>
          <@spring.showErrors "" ""/>
      </p>
    </div>

    <button type="submit" class="registerbtn" value="/sighUp"><@spring.message "register"/></button>

    <div style="display: flex; justify-content: center; align-items: center; margin-top: 5px">
      <a href="/signIn"><@spring.message "accountExists"/></a>
    </div>
  </div>
</form>
</body>
</html>