part of profile_view;

// ignore: must_be_immutable
class _ProfileMobile extends StatelessWidget {
  final ProfileViewModel viewModel;

  const _ProfileMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController.instance);
    viewModel.name.text = mainController.user.value!.name!;
    viewModel.email.text = mainController.user.value!.email!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: context.height * 0.7,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              GestureDetector(
                onTap: viewModel.profileTap,
                child: CircleAvatar(
                  backgroundImage: viewModel.file != null ? FileImage(viewModel.file!) : null,
                  radius: 50,
                  child: viewModel.file != null
                      ? const SizedBox(width: 0.0, height: 0.0)
                      : mainController.user.value!.avatar == defaultImage
                          ? const Icon(Icons.person_add, size: 40)
                          : Image(
                              image: NetworkImage(mainController.user.value!.avatar!),
                            ),
                ),
              ),
              const SizedBox(width: 0.0, height: 10),
              Text(
                '${mainController.user.value!.name}',
                style: context.textTheme.titleMedium,
              ),
              Text(
                '${mainController.user.value!.email}',
                style: context.textTheme.titleMedium,
              ),
              const SizedBox(width: 0.0, height: 10),
              CustomTextField(
                controller: viewModel.name,
                hintText: 'Enter you name',
                iconData: Icons.lock_rounded,
                keyboardType: TextInputType.text,
                validator: (e) => viewModel.inputValidator(e, 'name'),
              ),
              const SizedBox(width: 0.0, height: 40),
              SimpleButton(
                onPressed: viewModel.editHandler,
                text: 'Sumbit',
                isLoading: viewModel.isBusy,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
