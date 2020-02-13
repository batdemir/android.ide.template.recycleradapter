
package ${packageName};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;

import ${modelPackageName};
import ${rootPackageName}.R;
import ${rootPackageName}.databinding.Item${className}Binding;

import java.util.List;

public class Adapter${className} extends RecyclerView.Adapter {

    private Context context;
    private List<${modelName}> models;
    private Item${className}Binding binding;

    public Adapter${className}(Context context, List<${modelName}> models) {
        this.context = context;
        this.models = models;
    }

    @NonNull
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        binding = DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.${layoutName}, parent, false);
        return new MViewHolder(binding);
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        MViewHolder viewHolder = (MViewHolder) holder;
        viewHolder.setData(models.get(position));
    }

    @Override
    public int getItemCount() {
        return models.size();
    }

    public List<${modelName}> getModels() {
        return models;
    }

    public interface ItemListener {
        void onItemClick(${modelName} item);
    }

    private class MViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private ${modelName} item;

        private MViewHolder(@NonNull Item${className}Binding binding) {
            super(binding.getRoot());
            binding.rootItem${className}.setOnClickListener(this);
        }

        private void setData(${modelName} item) {
            this.item = item;

            // Implement here... !!!
        }

        @Override
        public void onClick(View v) {
            ItemListener itemListener = (ItemListener) context;
            itemListener.onItemClick(item);
        }
    }
}