(declare-fun x1_ack!1647 () (_ BitVec 64))
(declare-fun x0_ack!1651 () (_ BitVec 64))
(declare-fun y0_ack!1648 () (_ BitVec 64))
(declare-fun x_ack!1649 () (_ BitVec 64))
(declare-fun y_ack!1650 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1651) ((_ to_fp 11 53) x1_ack!1647))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1648) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1649) ((_ to_fp 11 53) x0_ack!1651)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1650) ((_ to_fp 11 53) y0_ack!1648))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1650) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1647)
                       ((_ to_fp 11 53) x0_ack!1651))
               ((_ to_fp 11 53) x0_ack!1651))
       ((_ to_fp 11 53) x1_ack!1647)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1647)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1647)
                       ((_ to_fp 11 53) x0_ack!1651)))
       ((_ to_fp 11 53) x0_ack!1651)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!1649)
                  ((_ to_fp 11 53) x0_ack!1651))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1647)
                  ((_ to_fp 11 53) x0_ack!1651)))))

(check-sat)
(exit)
