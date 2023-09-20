(declare-fun x1_ack!1507 () (_ BitVec 64))
(declare-fun x0_ack!1511 () (_ BitVec 64))
(declare-fun y0_ack!1508 () (_ BitVec 64))
(declare-fun x_ack!1509 () (_ BitVec 64))
(declare-fun y_ack!1510 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1511) ((_ to_fp 11 53) x1_ack!1507))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1508) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1509) ((_ to_fp 11 53) x0_ack!1511)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1510) ((_ to_fp 11 53) y0_ack!1508))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1510) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1507)
                       ((_ to_fp 11 53) x0_ack!1511))
               ((_ to_fp 11 53) x0_ack!1511))
       ((_ to_fp 11 53) x1_ack!1507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1507)
                       ((_ to_fp 11 53) x0_ack!1511)))
       ((_ to_fp 11 53) x0_ack!1511)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1509)
          ((_ to_fp 11 53) x0_ack!1511))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1507)
          ((_ to_fp 11 53) x0_ack!1511))))

(check-sat)
(exit)
