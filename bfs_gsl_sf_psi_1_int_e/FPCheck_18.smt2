(declare-fun a_ack!30 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvsle a_ack!30 #x00000000)))
(assert (not (bvsle a_ack!30 #x00000064)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #xbfa1111111111111
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!30))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!30)))))

(check-sat)
(exit)
