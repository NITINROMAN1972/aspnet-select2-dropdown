# aspnet-searchable-dropdown
ASP.NET C# code for a searchable dropdown list, where the user can search for the particular list item and that list element only will get displayed based on the search gets matched

### `Select2`  
* using JavaScript library such as Select2
* Select2 is a popular jQuery-based replacement for traditional HTML select boxes  
```
$(document).ready(function () {
    // Apply Select2 to your DropDownList
    $('#ddlRole').select2();
});
```
### For more custom designs
```
$(document).ready(function () {
    // Applying Select2 to your DropDownList with custom options
    $('#ddlRole').select2({
        placeholder: 'Select Roles.....', // Placeholder text
        allowClear: true, // Allow clearing the selected option
        theme: 'classic', // You can change the theme to 'bootstrap', 'classic', etc.
    });

    // Attaching a change event handler to trigger the postback
    $('#ddlRole').on('select2:select', function (e) {
        __doPostBack('<%= ddlRole.ClientID %>', ''); // Trigger postback
    });
});
```
