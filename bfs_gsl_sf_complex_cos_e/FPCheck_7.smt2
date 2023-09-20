(declare-fun b_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!13)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3d6ae7f3e733b81f
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!13)
                  ((_ to_fp 11 53) b_ack!13))
          ((_ to_fp 11 53) #x3ce952c77030ad4a))))

(check-sat)
(exit)
