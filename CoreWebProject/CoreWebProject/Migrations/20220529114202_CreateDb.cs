using Microsoft.EntityFrameworkCore.Migrations;

namespace CoreWebProject.Migrations
{
    public partial class CreateDb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Dinleyicilers",
                columns: table => new
                {
                    DinleyiciId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AdSoyad = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    KoltukNo = table.Column<int>(type: "int", nullable: false),
                    Yas = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Dinleyicilers", x => x.DinleyiciId);
                });

            migrationBuilder.CreateTable(
                name: "Mekanlars",
                columns: table => new
                {
                    MekanId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MekanAdi = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Il = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Ilce = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AcikAdres = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Mekanlars", x => x.MekanId);
                });

            migrationBuilder.CreateTable(
                name: "Sanatcilars",
                columns: table => new
                {
                    SanatciId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SanatciAd = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    SanatciCinsiyet = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: true),
                    Yas = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sanatcilars", x => x.SanatciId);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Dinleyicilers");

            migrationBuilder.DropTable(
                name: "Mekanlars");

            migrationBuilder.DropTable(
                name: "Sanatcilars");
        }
    }
}
