(declare-fun c_ack!61 () (_ BitVec 32))
(declare-fun a_ack!62 () (_ BitVec 64))
(declare-fun b_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!61 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!62)
                    ((_ to_fp 11 53) b_ack!60))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!62) ((_ to_fp 11 53) b_ack!60))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!60) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (FPCHECK_FADD_ACCURACY a_ack!62 b_ack!60))

(check-sat)
(exit)
