(declare-fun a_ack!240 () (_ BitVec 64))
(declare-fun b_ack!239 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!239)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!240))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!239)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!240)))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!239 a_ack!240))

(check-sat)
(exit)
