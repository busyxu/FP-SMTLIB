(declare-fun x1_ack!1462 () (_ BitVec 64))
(declare-fun x0_ack!1466 () (_ BitVec 64))
(declare-fun y0_ack!1463 () (_ BitVec 64))
(declare-fun x_ack!1464 () (_ BitVec 64))
(declare-fun y_ack!1465 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1466) ((_ to_fp 11 53) x1_ack!1462))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1463) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1464) ((_ to_fp 11 53) x0_ack!1466)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1465) ((_ to_fp 11 53) y0_ack!1463))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1465) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1462)
                       ((_ to_fp 11 53) x0_ack!1466))
               ((_ to_fp 11 53) x0_ack!1466))
       ((_ to_fp 11 53) x1_ack!1462)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1462)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1462)
                       ((_ to_fp 11 53) x0_ack!1466)))
       ((_ to_fp 11 53) x0_ack!1466)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!1463))

(check-sat)
(exit)
