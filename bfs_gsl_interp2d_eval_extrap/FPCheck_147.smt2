(declare-fun x1_ack!1497 () (_ BitVec 64))
(declare-fun x0_ack!1501 () (_ BitVec 64))
(declare-fun y0_ack!1498 () (_ BitVec 64))
(declare-fun x_ack!1499 () (_ BitVec 64))
(declare-fun y_ack!1500 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1501) ((_ to_fp 11 53) x1_ack!1497))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1499) ((_ to_fp 11 53) x0_ack!1501)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1500) ((_ to_fp 11 53) y0_ack!1498))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1500) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1497)
                       ((_ to_fp 11 53) x0_ack!1501))
               ((_ to_fp 11 53) x0_ack!1501))
       ((_ to_fp 11 53) x1_ack!1497)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1497)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1497)
                       ((_ to_fp 11 53) x0_ack!1501)))
       ((_ to_fp 11 53) x0_ack!1501)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!1499 x0_ack!1501))

(check-sat)
(exit)
