library(tidyr)
library(remotes)
library(spotifyr)
library(usethis)
library(ggplot2)
library(dplyr)
library(seewave)

all_out_2010 <- get_playlist_audio_features("", "37i9dQZF1DX5Ejj0EkURtP")
all_out_2000 <- get_playlist_audio_features("", "37i9dQZF1DX4o1oenSJRJd")

ggplot() +
  geom_density(data = all_out_2010, aes(x=tempo, fill="All Out 2010"), alpha=0.5) +
  geom_density(data = all_out_2000, aes(x=tempo, fill="All Out 2000"), alpha=0.5) +
  labs(title="Tempo Distribution", x="Tempo", y="Density") +
  scale_fill_manual(values=c("blue", "green"))

ggplot() +
  geom_point(data = all_out_2010, aes(x=energy, y=valence, color="All Out 2010"), alpha=0.5) +
  geom_point(data = all_out_2000, aes(x=energy, y=valence, color="All Out 2000"), alpha=0.5) +
  labs(title="Energy vs. Valence", x="Energy", y="Valence") +
  scale_color_manual(values=c("blue", "green"))