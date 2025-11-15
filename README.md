

## 📄 Script Overview: `scanner.ps1`

This PowerShell script scans the `C:\Users` directory and identifies any subfolders larger than **5GB**. It recursively checks each user folder and its subdirectories, calculates their size, and outputs a list of folders that exceed the threshold.

---

## ▶️ How to Run

1. Open PowerShell as Administrator.
2. Navigate to the directory containing the script.
3. Run the script using:

```powershell
.\scanners.ps1
```

---

## 📊 Output

The script returns a list of folders as custom objects with two properties:

- `FolderName`: Full path of the folder
- `SizeInMB`: Rounded size of the folder in megabytes

Example output:

```powershell
FolderName                          SizeInMB
-----------                         --------
C:Users\Tim\DATA\Videos             6789.23
C:Users\Sally\Downloads             5120.45
```

---


