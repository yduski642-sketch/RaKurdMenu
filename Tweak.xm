#import "IMGUI/imgui.h"
#import "IMGUI/imgui_internal.h"
#import <UIKit/UIKit.h>

void SetYusufStyle() {
    ImGuiStyle& style = ImGui::GetStyle();
    style.WindowRounding = 10.0f;
    style.Colors[ImGuiCol_WindowBg] = ImVec4(0.06f, 0.06f, 0.10f, 0.94f);
    style.Colors[ImGuiCol_Header] = ImVec4(0.12f, 0.45f, 0.80f, 1.00f);
}

void DrawMenu() {
    SetYusufStyle();
    ImGui::Begin("YUSUF MOD MENU ✅", nullptr, ImGuiWindowFlags_NoCollapse);
    ImGui::Text("Welcome to Yusuf VIP Menu");
    static bool wallhack = false;
    ImGui::Checkbox("Enable Wallhack", &wallhack);
    ImGui::End();
}
