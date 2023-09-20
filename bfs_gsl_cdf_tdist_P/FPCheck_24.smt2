(declare-fun mu_ack!83 () (_ BitVec 64))
(declare-fun x_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!83) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!84)
               ((_ to_fp 11 53) x_ack!84))
       ((_ to_fp 11 53) mu_ack!83)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!84)
                  ((_ to_fp 11 53) x_ack!84))
          ((_ to_fp 11 53) mu_ack!83))))

(check-sat)
(exit)
