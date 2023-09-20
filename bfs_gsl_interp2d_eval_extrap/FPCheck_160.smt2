(declare-fun x1_ack!1617 () (_ BitVec 64))
(declare-fun x0_ack!1621 () (_ BitVec 64))
(declare-fun y0_ack!1618 () (_ BitVec 64))
(declare-fun x_ack!1619 () (_ BitVec 64))
(declare-fun y_ack!1620 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1621) ((_ to_fp 11 53) x1_ack!1617))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1618) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1619) ((_ to_fp 11 53) x0_ack!1621)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1620) ((_ to_fp 11 53) y0_ack!1618))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1620) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1617)
                       ((_ to_fp 11 53) x0_ack!1621))
               ((_ to_fp 11 53) x0_ack!1621))
       ((_ to_fp 11 53) x1_ack!1617)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1617)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1617)
                       ((_ to_fp 11 53) x0_ack!1621)))
       ((_ to_fp 11 53) x0_ack!1621)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1620)
          ((_ to_fp 11 53) y0_ack!1618))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1618))))

(check-sat)
(exit)
