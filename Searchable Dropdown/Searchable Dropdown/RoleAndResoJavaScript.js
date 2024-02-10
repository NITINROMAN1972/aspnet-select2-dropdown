
// search functionality in dropdown menu
// using JavaScript library such as Select2
// Select2 is a popular jQuery-based replacement for traditional HTML select boxes

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
