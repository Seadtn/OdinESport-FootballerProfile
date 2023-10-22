<%@ Page Title="" Language="C#" MasterPageFile="admin.Master" AutoEventWireup="true" CodeBehind="Agents.aspx.cs" Inherits="OdinESport.Administration.Agents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | Agents</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function deleteProfile(agentId) {
    if (confirm('Are you sure you want to delete the agent with ID: ' + agentId + '?')) {
        // Create an anchor element (link) with the profileId as a query parameter
        var link = document.createElement('a');
        link.href = 'Agents.aspx?agentId=' + agentId;
        link.style.display = 'none'; // Hide the link

        // Add the link to the document body
        document.body.appendChild(link);

        // Trigger a click on the link to perform the deletion
        link.click();
    }
}

</script>
    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">

            <div class="card">
                <div class="card-header">
                    <div class="header-title">
                        <h4 class="card-title">Agents</h4>
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


                    </div>                          
                    <asp:Button ID="submit" runat="server" Text="Search" class="btn btn-primary next action-button float-end" value="submit" OnClick="SearchButton_Click" />

                </div>
            </div>
            
         <div class="card">
            <div class="card-header d-flex justify-content-between">
               <div class="header-title">
                  <h4 class="card-title">Agents List</h4>
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
