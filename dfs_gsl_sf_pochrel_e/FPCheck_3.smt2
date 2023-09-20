(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!4))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!5))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) b_ack!4)) #x3fe62e42fefa39ef))

(check-sat)
(exit)
