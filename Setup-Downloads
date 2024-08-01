document.addEventListener("DOMContentLoaded", function() {
  var images = [
    { src: "LibreWolf.svg", link: "https://librewolf.net/installation", text: "LibreWolf" },
    { src: "MuseScore.png", link: "https://musescore.org/en/download", text: "Musescore" },
    { src: "Steam.ico", link: "https://store.steampowered.com/about/download", text: "Steam" },
    { src: "Parsec.ico", link: "https://parsec.app/downloads", text: "Parsec" },
    { src: "TailScale.png", link: "https://tailscale.com/download", text: "Tailscale" },
    { src: "Obsidian.ico", link: "https://obsidian.md", text: "Obsidian" },
    { src: "Discord.svg", link: "https://discord.com/download", text: "Discord" },
    { src: "VSCode.png", link: "https://code.visualstudio.com", text: "VSCode" },
    { src: "GIMP.png", link: "https://www.gimp.org/downloads", text: "GIMP" },
    { src: "Todoist.png", link: "https://todoist.com/downloads", text: "Todoist" },
    { src: "Peazip.png", link: "https://peazip.github.io", text: "Peazip" },
    { src: "Syncthing.png", link: "https://syncthing.net/downloads", text: "Syncthing" },
    { src: "Vencord.png", link: "https://vencord.dev/download", text: "Vencord" },
    { src: "LibreOffice.png", link: "https://www.libreoffice.org/download/download-libreoffice", text: "LibreOffice" },
    { src: "qbittorrent.png", link: "https://www.qbittorrent.org/download", text: "qbittorrent" },
    { src: "ProtonVPN.png", link: "https://protonvpn.com/download", text: "ProtonVPN" },
    { src: "NXPowerLite Desktop.png", link: "https://cdn.neuxpower.com/releases/desktop-mac/8.0.8/NXPowerLiteDesktop80_8.dmg", text: "NXPowerLite" },
    //{ src: "Windows Activation.png", link: "https://gist.github.com/kimgiftww/6d6242e35ef6e3baa3a6e4fb8f386d0b", text: "Windows Activation" },

    //{ src: "imagelink", link: "Download Link", text: "Name" },
    //NXPowerLite Desktop
    //https://support.neuxpower.com/hc/en-us/articles/360026441734-Neuxpower-Downloads-All-products
    //https://cdn.neuxpower.com/releases/desktop-mac/8.0.8/NXPowerLiteDesktop80_8.dmg
    //https://cdn.neuxpower.com/releases/desktop/8.0.11/NXPowerLite64Setup80_11.msi
    //Key: FZAS8-38486-MB8NG-PVGKJ-898W5
    //
  ];

  var columb1 = document.getElementById("columb1");
  var columb2 = document.getElementById("columb2");
  var columb3 = document.getElementById("columb3");
  var columb4 = document.getElementById("columb4");

  for (var i = 0; i < images.length; i++) {
    var imgContainer = document.createElement("div");
    imgContainer.classList.add("image-container");

    var img = document.createElement("img");
    img.src = images[i].src;
    img.alt = "Image " + (i + 1);

    var link = document.createElement("a");
    link.href = images[i].link;
    link.textContent = images[i].text;
    link.target = "_blank"; // Opens the link in a new tab/window
    link.rel = "noopener noreferrer"; // Add rel attribute to the anchor element

    imgContainer.appendChild(img);
    imgContainer.appendChild(link);

    // Check if the current image is the Musescore image
    if (images[i].src === "MuseScore.png") {
      imgContainer.classList.add("round-image"); // Add a class to the container
    }
    if (images[i].src === "Peazip.png") {
      imgContainer.classList.add("round-image"); // Add a class to the container
    }
    if (images[i].src === "TailScale.png") {
      imgContainer.classList.add("rounded-corners"); // Add a class to the container
    }

    if (i % 4 === 0) {
      columb1.appendChild(imgContainer);
    } else if (i % 4 === 1) {
      columb2.appendChild(imgContainer);
    } else if (i % 4 === 2) {
      columb3.appendChild(imgContainer);
    } else {
      columb4.appendChild(imgContainer);
    }
  }
});
