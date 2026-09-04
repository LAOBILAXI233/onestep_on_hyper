.class Lcom/fasterxml/jackson/databind/ObjectMapper$1;
.super Ljava/lang/Object;
.source "ObjectMapper.java"

.implements Lcom/fasterxml/jackson/databind/Module$SetupContext;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field final synthetic val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public addAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)V
    .locals 3
    .param p1, "resolver"    # Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .prologue
    .line 835
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    .line 836
    .local v0, "df":Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 837
    return-void
.end method

.method public addBeanDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)V
    .locals 3
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .prologue
    .line 810
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    .line 811
    .local v0, "df":Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 812
    return-void
.end method

.method public addBeanSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
    .locals 2
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .prologue
    .line 828
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;->withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 829
    return-void
.end method

.method public addDeserializationProblemHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;

    .prologue
    .line 887
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 888
    return-void
.end method

.method public addDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)V
    .locals 3
    .param p1, "d"    # Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .prologue
    .line 798
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    .line 799
    .local v0, "df":Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 800
    return-void
.end method

.method public addKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)V
    .locals 3
    .param p1, "d"    # Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .prologue
    .line 804
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    .line 805
    .local v0, "df":Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 806
    return-void
.end method

.method public addKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V
    .locals 2
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/ser/Serializers;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 824
    return-void
.end method

.method public addSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V
    .locals 2
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/ser/Serializers;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 819
    return-void
.end method

.method public addTypeModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)V
    .locals 2
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .prologue
    .line 841
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 842
    .local v0, "f":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 844
    return-void
.end method

.method public addValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
    .locals 3
    .param p1, "instantiators"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .prologue
    .line 848
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    .line 849
    .local v0, "df":Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 850
    return-void
.end method

.method public appendAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 2
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 867
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 868
    return-void
.end method

.method public configOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;"
        }
    .end annotation

    .prologue
    .line 791
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object v0

    return-object v0
.end method

.method public getMapperVersion()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcom/fasterxml/jackson/core/ObjectCodec;",
            ">()TC;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public insertAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 2
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 861
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 862
    return-void
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 1
    .param p1, "subtypes"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 878
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p1, "subtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    .line 873
    return-void
.end method

.method public setClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)V
    .locals 2
    .param p1, "ci"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 855
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 856
    return-void
.end method

.method public setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 883
    return-void
.end method

.method public setNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V
    .locals 1
    .param p1, "naming"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 893
    return-void
.end method
