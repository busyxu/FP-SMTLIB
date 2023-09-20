(declare-fun e_ack!40 () (_ BitVec 32))
(declare-fun a_ack!41 () (_ BitVec 64))
(declare-fun b_ack!38 () (_ BitVec 64))
(declare-fun c_ack!39 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!40 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!38) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!39) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!41)
                    ((_ to_fp 11 53) b_ack!38))
            ((_ to_fp 11 53) #x2ab13c484138708e))))

(check-sat)
(exit)
