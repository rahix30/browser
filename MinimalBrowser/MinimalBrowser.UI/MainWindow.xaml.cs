using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using System.Runtime.InteropServices;

namespace MinimalBrowser.UI;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    [DllImport("MinimalBrowser.Bridge.dll", CallingConvention = CallingConvention.Cdecl)]
    public static extern void HelloFromBridge();

    [DllImport("kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
    private static extern IntPtr LoadLibrary(string lpFileName);

    public MainWindow()
    {
        InitializeComponent();

        // Explicitly load the C++/CLI bridge DLL
        IntPtr hModule = LoadLibrary("MinimalBrowser.Bridge.dll");
        if (hModule == IntPtr.Zero)
        {
            int lastError = Marshal.GetLastWin32Error();
            MessageBox.Show($"Failed to load MinimalBrowser.Bridge.dll. Error code: {lastError}");
        }

        HelloFromBridge();

        // Navigate to Google as the default home page
        webBrowser.Navigate("https://www.google.com");
    }

    private void GoButton_Click(object sender, RoutedEventArgs e)
    {
        try
        {
            webBrowser.Navigate(urlTextBox.Text);
        }
        catch (Exception ex)
        {
            MessageBox.Show($"Navigation failed: {ex.Message}");
        }
    }

    private void BackButton_Click(object sender, RoutedEventArgs e)
    {
        webBrowser.GoBack();
    }

    private void ForwardButton_Click(object sender, RoutedEventArgs e)
    {
        webBrowser.GoForward();
    }

    private void RefreshButton_Click(object sender, RoutedEventArgs e)
    {
        webBrowser.Refresh();
    }
}