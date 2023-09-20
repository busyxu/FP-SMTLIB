(declare-fun x1_ack!1517 () (_ BitVec 64))
(declare-fun x0_ack!1521 () (_ BitVec 64))
(declare-fun y0_ack!1518 () (_ BitVec 64))
(declare-fun x_ack!1519 () (_ BitVec 64))
(declare-fun y_ack!1520 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1521) ((_ to_fp 11 53) x1_ack!1517))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1518) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1519) ((_ to_fp 11 53) x0_ack!1521)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1520) ((_ to_fp 11 53) y0_ack!1518))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1520) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1517)
                       ((_ to_fp 11 53) x0_ack!1521))
               ((_ to_fp 11 53) x0_ack!1521))
       ((_ to_fp 11 53) x1_ack!1517)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1517)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1517)
                       ((_ to_fp 11 53) x0_ack!1521)))
       ((_ to_fp 11 53) x0_ack!1521)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1519)
          ((_ to_fp 11 53) x0_ack!1521))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1517)
          ((_ to_fp 11 53) x0_ack!1521))))

(check-sat)
(exit)
