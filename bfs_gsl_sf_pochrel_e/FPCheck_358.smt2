(declare-fun a_ack!919 () (_ BitVec 64))
(declare-fun b_ack!918 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!918))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!919)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!918) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!919)
                    ((_ to_fp 11 53) b_ack!918))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!919 b_ack!918))

(check-sat)
(exit)
