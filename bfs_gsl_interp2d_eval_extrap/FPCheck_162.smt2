(declare-fun x1_ack!1637 () (_ BitVec 64))
(declare-fun x0_ack!1641 () (_ BitVec 64))
(declare-fun y0_ack!1638 () (_ BitVec 64))
(declare-fun x_ack!1639 () (_ BitVec 64))
(declare-fun y_ack!1640 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1641) ((_ to_fp 11 53) x1_ack!1637))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1638) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1639) ((_ to_fp 11 53) x0_ack!1641)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1640) ((_ to_fp 11 53) y0_ack!1638))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1640) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1637)
                       ((_ to_fp 11 53) x0_ack!1641))
               ((_ to_fp 11 53) x0_ack!1641))
       ((_ to_fp 11 53) x1_ack!1637)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1637)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1637)
                       ((_ to_fp 11 53) x0_ack!1641)))
       ((_ to_fp 11 53) x0_ack!1641)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!1639)
                  ((_ to_fp 11 53) x0_ack!1641))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1637)
                  ((_ to_fp 11 53) x0_ack!1641)))))

(check-sat)
(exit)
