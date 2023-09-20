(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!12 () (_ BitVec 64))
(declare-fun a_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!13)
          ((_ to_fp 11 53) a_ack!13))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!12)
          ((_ to_fp 11 53) b_ack!12))))

(check-sat)
(exit)
