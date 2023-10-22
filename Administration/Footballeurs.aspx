<%@ Page Title="" Language="C#" MasterPageFile="admin.Master" AutoEventWireup="true" CodeBehind="Footballeurs.aspx.cs" Inherits="OdinESport.Administration.Footballeurs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | Footballeurs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function deleteProfile(profileId) {
    if (confirm('Are you sure you want to delete the profile with ID: ' + profileId + '?')) {
        // Create an anchor element (link) with the profileId as a query parameter
        var link = document.createElement('a');
        link.href = 'Footballeurs.aspx?profileId=' + profileId;
        link.style.display = 'none'; // Hide the link

        // Add the link to the document body
        document.body.appendChild(link);

        // Trigger a click on the link to perform the deletion
        link.click();
    }
}
//   function deleteProfile(profileId) {
//    if (confirm('Are you sure you want to delete the profile with ID: ' + profileId + '?')) {
//        // Create a hidden form with the profileId as a parameter
//        var form = document.createElement("form");
//        form.method = "post";
//        form.action = "Footballeurs.aspx/DeleteProfile";
//        form.style.display = "none";

//        var input = document.createElement("input");
//        input.type = "hidden";
//        input.name = "profileId";
//        input.value = profileId;

//        form.appendChild(input);
//        document.body.appendChild(form);

//        // Submit the form
//        form.submit();
//    }
//}
</script>
    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">

            <div class="card">
                <div class="card-header">
                    <div class="header-title">
                        <h4 class="card-title">Footballeurs</h4>
                    </div>
                </div>
                <div class="card-body">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">First Name: </label>
                                  <asp:TextBox ID="Fname" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Last Name: </label>
                                  <asp:TextBox ID="Lname" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">Foot: </label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" runat="server">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Left
                               
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" runat="server" checked>
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Right                               
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" runat="server">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Both                               
                                    </label>
                                </div>
                            </div>
                        </div>


                    </div>                          
                    <asp:Button ID="submit" runat="server" Text="Search" class="btn btn-primary next action-button float-end" value="submit" OnClick="SearchButton_Click" />

                </div>
            </div>
            
         <div class="card">
            <div class="card-header d-flex justify-content-between">
               <div class="header-title">
                  <h4 class="card-title">Footballeurs List</h4>
               </div>
            </div>
            <div class="card-body px-0">
               <div class="table-responsive">
                 <div id="userlisttable" runat="server"></div>
               </div>
            </div>
         </div>
     
        </div>
    </div>
</asp:Content>
