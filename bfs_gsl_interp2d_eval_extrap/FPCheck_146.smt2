(declare-fun x1_ack!1492 () (_ BitVec 64))
(declare-fun x0_ack!1496 () (_ BitVec 64))
(declare-fun y0_ack!1493 () (_ BitVec 64))
(declare-fun x_ack!1494 () (_ BitVec 64))
(declare-fun y_ack!1495 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1496) ((_ to_fp 11 53) x1_ack!1492))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1493) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1494) ((_ to_fp 11 53) x0_ack!1496)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1495) ((_ to_fp 11 53) y0_ack!1493))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1495) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1492)
                       ((_ to_fp 11 53) x0_ack!1496))
               ((_ to_fp 11 53) x0_ack!1496))
       ((_ to_fp 11 53) x1_ack!1492)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1492)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1492)
                       ((_ to_fp 11 53) x0_ack!1496)))
       ((_ to_fp 11 53) x0_ack!1496)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!1494 x0_ack!1496))

(check-sat)
(exit)
