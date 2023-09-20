(declare-fun x1_ack!1387 () (_ BitVec 64))
(declare-fun x0_ack!1391 () (_ BitVec 64))
(declare-fun y0_ack!1388 () (_ BitVec 64))
(declare-fun x_ack!1389 () (_ BitVec 64))
(declare-fun y_ack!1390 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1391) ((_ to_fp 11 53) x1_ack!1387))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1388) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1389) ((_ to_fp 11 53) x0_ack!1391)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1390) ((_ to_fp 11 53) y0_ack!1388)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1387)
                       ((_ to_fp 11 53) x0_ack!1391))
               ((_ to_fp 11 53) x0_ack!1391))
       ((_ to_fp 11 53) x1_ack!1387)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1387)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1387)
                       ((_ to_fp 11 53) x0_ack!1391)))
       ((_ to_fp 11 53) x0_ack!1391)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1389)
          ((_ to_fp 11 53) x0_ack!1391))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1387)
          ((_ to_fp 11 53) x0_ack!1391))))

(check-sat)
(exit)
