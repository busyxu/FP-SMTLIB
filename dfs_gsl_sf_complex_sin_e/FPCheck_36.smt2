(declare-fun b_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!97)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!97)
          ((_ to_fp 11 53) b_ack!97))
  #x3ce952c77030ad4a))

(check-sat)
(exit)
