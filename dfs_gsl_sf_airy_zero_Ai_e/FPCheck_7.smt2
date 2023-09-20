(declare-fun a_ack!13 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult a_ack!13 #x00000001)))
(assert (not (bvult (concat #x00000000 a_ack!13) #x0000000000000065)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4010000000000000)
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!13))
  #x3ff0000000000000))

(check-sat)
(exit)
