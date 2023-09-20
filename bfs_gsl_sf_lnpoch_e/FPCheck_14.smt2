(declare-fun a_ack!55 () (_ BitVec 64))
(declare-fun b_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!55)
                     ((_ to_fp 11 53) b_ack!54))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!54))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!55))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!55) ((_ to_fp 11 53) #x4065600000000000)))
(assert (FPCHECK_FADD_ACCURACY a_ack!55 b_ack!54))

(check-sat)
(exit)
