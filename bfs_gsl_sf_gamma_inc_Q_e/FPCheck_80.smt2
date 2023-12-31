(declare-fun a_ack!232 () (_ BitVec 64))
(declare-fun b_ack!231 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!231) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!231) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!231)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!232))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_ACCURACY a_ack!232 #x3ff0000000000000))

(check-sat)
(exit)
