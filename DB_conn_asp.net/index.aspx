<div>
    <table style="width: 100%;">
        <caption class="c1">Insert Data </caption>
        <tr>
            <td  class="c1">&nbsp;Name</td>
            <td>&nbsp;
                <input id="Text1" type="text"  name="name" />
            </td>
        </tr>
        <tr>
           <td  class="c1">&nbsp;Email</td>
            <td>&nbsp;  <input id="Email" type="email"  name="email"/>

            </td>
        </tr>
        <tr>
            <td class="c2" colspan="2">&nbsp;<asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />

            </td>
        </tr>
    </table>
</div>
    <br />
    <div>
        <asp:Button ID="retrieve" runat="server" Text="Retrieve" OnClick="retrieve_Click" />
        <br />
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"></asp:GridView>
    </div>