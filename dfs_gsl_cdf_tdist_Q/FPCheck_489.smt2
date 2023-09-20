(declare-fun mu_ack!1473 () (_ BitVec 64))
(declare-fun x_ack!1474 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!1473) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1474)
                    ((_ to_fp 11 53) x_ack!1474))
            ((_ to_fp 11 53) mu_ack!1473))))
(assert (FPCHECK_FDIV_ZERO
  mu_ack!1473
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1474)
          ((_ to_fp 11 53) x_ack!1474))))

(check-sat)
(exit)
