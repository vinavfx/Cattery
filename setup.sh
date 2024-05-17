cats=(
    'Intrinsic'
    'DSINE'
    'SegmentAnything'
    'ViTMatte'
)

for cat in "${cats[@]}"; do
    rclone -P copy --include '*.cat' drive:Cattery/$cat $cat-for-Nuke/nuke/Cattery/$cat
done
