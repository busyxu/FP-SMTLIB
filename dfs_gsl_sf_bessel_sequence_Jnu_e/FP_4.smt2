(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun c_ack!27 () (_ BitVec 32))
(declare-fun b_ack!26 () (_ BitVec 32))
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 c_ack!27)))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand b_ack!26 #x00000007)))
       #x0000000000000011))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       (CF_pow a_ack!28 #x3fd5555555555555))
               (CF_pow a_ack!28 #x3fd5555555555555))
       ((_ to_fp 11 53) a_ack!28)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!28)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       (CF_pow a_ack!28 #x3fd5555555555555)))
       (CF_pow a_ack!28 #x3fd5555555555555)))

(check-sat)
(exit)
