(declare-fun a_ack!510 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!510) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!510) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!510))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!510)))
  #x4028000000000000))

(check-sat)
(exit)
