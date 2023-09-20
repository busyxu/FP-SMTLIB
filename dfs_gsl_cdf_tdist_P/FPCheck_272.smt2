(declare-fun mu_ack!1003 () (_ BitVec 64))
(declare-fun x_ack!1004 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1003) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1004)
               ((_ to_fp 11 53) x_ack!1004))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1003))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4048000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) mu_ack!1003)
                  ((_ to_fp 11 53) #x3fe0000000000000)))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) mu_ack!1003)
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
