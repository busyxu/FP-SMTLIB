(declare-fun d_ack!208 () (_ BitVec 32))
(declare-fun a_ack!209 () (_ BitVec 64))
(declare-fun b_ack!206 () (_ BitVec 64))
(declare-fun c_ack!207 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!208 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!209) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!206) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!207) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!209)
                    ((_ to_fp 11 53) b_ack!206))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!209)
                    ((_ to_fp 11 53) c_ack!207))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!206)
               ((_ to_fp 11 53) c_ack!207))
       ((_ to_fp 11 53) #x0034000000000000)))

(check-sat)
(exit)
