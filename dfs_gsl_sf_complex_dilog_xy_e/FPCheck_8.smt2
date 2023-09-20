(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!20 () (_ BitVec 64))
(declare-fun a_ack!21 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!21)
          ((_ to_fp 11 53) a_ack!21))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!20)
          ((_ to_fp 11 53) b_ack!20))))

(check-sat)
(exit)
