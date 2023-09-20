(declare-fun e_ack!100 () (_ BitVec 32))
(declare-fun a_ack!101 () (_ BitVec 64))
(declare-fun b_ack!98 () (_ BitVec 64))
(declare-fun c_ack!99 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!100 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!101) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!99) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!101)
                    ((_ to_fp 11 53) b_ack!98))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!101)
               ((_ to_fp 11 53) c_ack!99))
       ((_ to_fp 11 53) #x2ab13c484138708e)))

(check-sat)
(exit)
