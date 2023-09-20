(declare-fun mu_ack!87 () (_ BitVec 64))
(declare-fun x_ack!88 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!87) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!88)
               ((_ to_fp 11 53) x_ack!88))
       ((_ to_fp 11 53) mu_ack!87)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!88)
                  ((_ to_fp 11 53) x_ack!88))
          ((_ to_fp 11 53) mu_ack!87))))

(check-sat)
(exit)
