let count = 0;
const mc = document.getElementById("mc");

mc.textContent = `${count}`;

const updateUI = () => {
    mc.textContent = `${count}`;
    mc.style.color = count > 0 ? "green" : "black";
};

const inc = () => {
    count += 1;
    updateUI();
};

const dec = () => {
    if (count > 0) {
        count -= 1;
        updateUI();
    }
};

const setc = () => {
    count = 0;
    updateUI();
};
