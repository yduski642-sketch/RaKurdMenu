#import "IMGUI/imgui.h"
#import "IMGUI/imgui_internal.h"

// ---- Yusuf Mod Menu Style ----
void SetYusufStyle() {
    ImGuiStyle& style = ImGui::GetStyle();
    
    style.WindowRounding = 8.0f;
    style.FrameRounding = 5.0f;
    style.HeaderRounding = 5.0f;
    style.Colors[ImGuiCol_Text] = ImVec4(1.00f, 1.00f, 1.00f, 1.00f);
    style.Colors[ImGuiCol_WindowBg] = ImVec4(0.06f, 0.06f, 0.10f, 0.94f); // ڕەنگێ پشت بنکی (تاری)
    style.Colors[ImGuiCol_Header] = ImVec4(0.12f, 0.45f, 0.80f, 1.00f);   // شینێ گەش
    style.Colors[ImGuiCol_Button] = ImVec4(0.12f, 0.45f, 0.80f, 0.40f);
    style.Colors[ImGuiCol_ButtonHovered] = ImVec4(0.12f, 0.45f, 0.80f, 1.00f);
    style.Colors[ImGuiCol_CheckMark] = ImVec4(0.12f, 0.45f, 0.80f, 1.00f);
    style.Colors[ImGuiCol_FrameBg] = ImVec4(0.16f, 0.16f, 0.25f, 1.00f);
}

void DrawMenu() {
    SetYusufStyle();
    
    ImGui::Begin("YUSUF MOD MENU", nullptr, ImGuiWindowFlags_NoCollapse);
    
    ImGui::TextColored(ImVec4(0.0f, 0.7f, 1.0f, 1.0f), "Welcome, Yusuf!");
    ImGui::Separator();

    static bool wallhack = false;
    static bool aimbot = false;
    static float speed = 1.0f;

    ImGui::Checkbox("Enable Wallhack", &wallhack);
    ImGui::Checkbox("Enable Aimbot", &aimbot);
    
    ImGui::Spacing();
    ImGui::SliderFloat("Game Speed", &speed, 1.0f, 10.0f);
    
    ImGui::Separator();
    if (ImGui::Button("Save Settings", ImVec2(-1, 0))) {
        // Save logic here
    }

    ImGui::End();
}
