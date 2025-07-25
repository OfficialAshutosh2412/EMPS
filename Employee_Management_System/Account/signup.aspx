<%@ Page Title="Home | Signup" Language="C#" MasterPageFile="~/HomeLayout.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Employee_Management_System.Account.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bg-gray-800 p-8 rounded-xl shadow-lg md:w-[700px] w-full">
        <h2 class="text-3xl font-bold mb-8 text-center">Employee Signup</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Full Name -->
            <div>
                <label class="mb-1">Full Name</label>
                <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="fullname" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:TextBox ID="fullname" runat="server" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Email -->
            <div>
                <label class=" mb-1">Email</label>
                 <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="email" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:TextBox ID="email" runat="server" TextMode="Email" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Password -->
            <div>
                <label class=" mb-1">Password</label>
                  <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="password" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Confirm Password -->
            <div>
                <label class=" mb-1">Confirm Password</label>
                <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="confirmPassword" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>

                <asp:CompareValidator ErrorMessage="not matching" ControlToValidate="confirmPassword" runat="server" ControlToCompare="password" Display="Dynamic" CssClass="text-red-300 text-sm inline"/>

                <asp:TextBox ID="confirmPassword" runat="server" TextMode="Password" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Contact Number -->
            <div>
                <label class=" mb-1">Contact Number</label>
                <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="contact" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:TextBox ID="contact" runat="server" TextMode="Phone" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Pincode -->
            <div>
                <label class=" mb-1">Pincode</label>
                 <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="pincode" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:TextBox ID="pincode" runat="server" TextMode="Number" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Full Address (spans 2 columns on desktop) -->
            <div class="md:col-span-2">
                <label class=" mb-1">Full Address</label>
                <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="address" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Rows="3" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Profile Picture Upload -->
            <div class="md:col-span-2">
                <label class=" mb-1">Profile Picture</label>
                <asp:RequiredFieldValidator ErrorMessage="required" ControlToValidate="profilePic" runat="server" CssClass="text-red-300 text-sm inline" Display="Dynamic"/>
                <asp:FileUpload ID="profilePic" runat="server" CssClass="w-full p-2 rounded bg-gray-700 border border-gray-600 text-white" />
            </div>

            <!-- Submit Button -->
            <div class="md:col-span-2 text-center">
                <asp:Button ID="btnSubmit" runat="server" Text="Sign Up"
                    CssClass="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg font-semibold transition duration-200 cursor-pointer active:scale-[0.9]" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
