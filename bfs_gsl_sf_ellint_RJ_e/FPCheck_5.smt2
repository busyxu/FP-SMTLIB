(declare-fun e_ack!60 () (_ BitVec 32))
(declare-fun a_ack!61 () (_ BitVec 64))
(declare-fun b_ack!58 () (_ BitVec 64))
(declare-fun c_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!60 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!61) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!61)
                    ((_ to_fp 11 53) b_ack!58))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (FPCHECK_FADD_ACCURACY a_ack!61 c_ack!59))

(check-sat)
(exit)
