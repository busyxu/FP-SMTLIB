(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!35)
                     ((_ to_fp 11 53) b_ack!34))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!34))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!35)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) b_ack!34)) #x3fe62e42fefa39ef))

(check-sat)
(exit)
