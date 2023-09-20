(declare-fun a_ack!24 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvsle a_ack!24 #x00000000)))
(assert (not (bvsle a_ack!24 #x00000064)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!24))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!24)))
  #x3f71111111111111))

(check-sat)
(exit)
