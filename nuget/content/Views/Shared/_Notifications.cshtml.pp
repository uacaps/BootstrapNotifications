@using $rootnamespace$.Extensions

@{
    var errorList = Html.GetNotifications(NotificationType.ERROR);
    var warningList = Html.GetNotifications(NotificationType.WARNING);
    var successList = Html.GetNotifications(NotificationType.SUCCESS);
    var infoList = Html.GetNotifications(NotificationType.INFO);
}
<!-- display errors -->
@if (errorList != null)
{
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        @if(errorList.Count() > 1){
            <strong><span class="glyphicon glyphicon-remove"></span> There are @errorList.Count() errors: </strong>
            <ul>
                @foreach (String message in errorList)
                {
                    <li>@Html.Raw(message)</li>
                }
            </ul>
        }
        else{
            <strong><span class="glyphicon glyphicon-remove"></span> Error: </strong>
            @Html.Raw(errorList.First())
        }
    </div>
}

<!-- display warnings -->
@if (warningList != null)
{
    <div class="alert alert-warning alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        @if(warningList.Count() > 1){
            <strong><span class="glyphicon glyphicon-warning-sign"></span> There are @warningList.Count() warnings: </strong>
            <ul>
                @foreach (String message in warningList)
                {
                    <li>@Html.Raw(message)</li>
                }
            </ul>
        }
        else{
            <strong><span class="glyphicon glyphicon-warning-sign"></span> Warning: </strong>
            @Html.Raw(warningList.First())
        }
    </div>
}

<!-- display success -->
@if (successList != null)
{
    <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        @if(successList.Count() > 1){
            <strong><span class="glyphicon glyphicon-ok"></span> There are @successList.Count() successful notifications: </strong>
            <ul>
                @foreach (String message in successList)
                {
                    <li>@Html.Raw(message)</li>
                }
            </ul>
        }
        else{
            <strong><span class="glyphicon glyphicon-ok"></span> Success! </strong>
            @Html.Raw(successList.First())
        }
    </div>
}

<!-- display success -->
@if (infoList != null)
{
    <div class="alert alert-info alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        @if(infoList.Count() > 1){
            <strong><span class="glyphicon glyphicon-info-sign"></span> There are @infoList.Count() notifications: </strong>
            <ul>
                @foreach (String message in infoList)
                {
                    <li>@Html.Raw(message)</li>
                }
            </ul>
        }
        else{
            <strong><span class="glyphicon glyphicon-info-sign"></span> </strong>
            @Html.Raw(infoList.First())
        }
    </div>
}

