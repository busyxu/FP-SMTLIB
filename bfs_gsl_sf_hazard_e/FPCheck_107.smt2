(declare-fun a_ack!166 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!166) ((_ to_fp 11 53) #x4039000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!166)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!166)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (FPCHECK_FSUB_ACCURACY
  #xbfcce6bb25aa1316
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) a_ack!166))
          ((_ to_fp 11 53) a_ack!166))))

(check-sat)
(exit)
