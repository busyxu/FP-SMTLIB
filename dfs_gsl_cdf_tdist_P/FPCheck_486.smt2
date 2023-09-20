(declare-fun mu_ack!1461 () (_ BitVec 64))
(declare-fun x_ack!1462 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!1461) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1462)
                    ((_ to_fp 11 53) x_ack!1462))
            ((_ to_fp 11 53) mu_ack!1461))))
(assert (FPCHECK_FDIV_OVERFLOW
  mu_ack!1461
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1462)
          ((_ to_fp 11 53) x_ack!1462))))

(check-sat)
(exit)
