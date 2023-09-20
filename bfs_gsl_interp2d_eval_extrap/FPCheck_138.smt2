(declare-fun x1_ack!1417 () (_ BitVec 64))
(declare-fun x0_ack!1421 () (_ BitVec 64))
(declare-fun y0_ack!1418 () (_ BitVec 64))
(declare-fun x_ack!1419 () (_ BitVec 64))
(declare-fun y_ack!1420 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1421) ((_ to_fp 11 53) x1_ack!1417))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1418) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1419) ((_ to_fp 11 53) x0_ack!1421)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1420) ((_ to_fp 11 53) y0_ack!1418)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1417)
                       ((_ to_fp 11 53) x0_ack!1421))
               ((_ to_fp 11 53) x0_ack!1421))
       ((_ to_fp 11 53) x1_ack!1417)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1417)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1417)
                       ((_ to_fp 11 53) x0_ack!1421)))
       ((_ to_fp 11 53) x0_ack!1421)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1419)
          ((_ to_fp 11 53) x0_ack!1421))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1417)
          ((_ to_fp 11 53) x0_ack!1421))))

(check-sat)
(exit)
