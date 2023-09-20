(declare-fun d_ack!156 () (_ BitVec 32))
(declare-fun a_ack!157 () (_ BitVec 64))
(declare-fun b_ack!154 () (_ BitVec 64))
(declare-fun c_ack!155 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!156 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!157)
                    ((_ to_fp 11 53) b_ack!154))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!157)
                    ((_ to_fp 11 53) c_ack!155))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!154)
                    ((_ to_fp 11 53) c_ack!155))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!157) ((_ to_fp 11 53) b_ack!154)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!157) ((_ to_fp 11 53) c_ack!155)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!157) ((_ to_fp 11 53) #x7fc9999999999999)))

(check-sat)
(exit)
