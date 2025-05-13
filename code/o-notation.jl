using Plots: tickfont
using Plots


BLUE = "#B0E1FA"
VIOLET = "#E8C9FA"
RED = "#F79BC5"
GREEN = "#DBF9E7"
YELLOW = "#EFE9B7"
ORANGE = "#F6CCB0"
BLACK = "#000000"
WHITE = "#F4EDDE"


# Set theme and override background
default(background_color = :transparent)
default(fontfamily = "FiraSans-Thin")
default(background_color_inside = :transparent)


# Plot 
x = range(0, 100, length=100)
y1 = fill(1, length(x))
y2 = @. log2(x)
y3 = @. sqrt(x)
y4 = @. x
y5 = @. x * log2(x)
y6 = @. x^2
y7 = @. 2^x
y8 = map(factorial, [0, 1, 2, 3, 4, 5])

plot(
    x, [y1, y2, y3, y4, y5, y6, y7],
    label=[
        "\$1\$" "\$\\log_2(x)\$" "\$\\sqrt{x}\$" "\$x\$" "\$x\\log_2(x)\$" "\$x^2\$" "\$2^x\$"
    ]
)
plot!(range(0, 5, length=6), y8, label="\$x!\$")
plot!(legend=:right, legendcolumn=1)
xlims!(0, 100)
ylims!(0, 100)
xlabel!("\$x\$")
ylabel!("\$f(x)\$")

savefig("../figures/o-orders.svg")
