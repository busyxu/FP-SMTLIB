(declare-fun x1_ack!1352 () (_ BitVec 64))
(declare-fun x0_ack!1356 () (_ BitVec 64))
(declare-fun y0_ack!1353 () (_ BitVec 64))
(declare-fun x_ack!1354 () (_ BitVec 64))
(declare-fun y_ack!1355 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1356) ((_ to_fp 11 53) x1_ack!1352))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1353) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1354) ((_ to_fp 11 53) x0_ack!1356)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1355) ((_ to_fp 11 53) y0_ack!1353)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1352)
                       ((_ to_fp 11 53) x0_ack!1356))
               ((_ to_fp 11 53) x0_ack!1356))
       ((_ to_fp 11 53) x1_ack!1352)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1352)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1352)
                       ((_ to_fp 11 53) x0_ack!1356)))
       ((_ to_fp 11 53) x0_ack!1356)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!1354 x0_ack!1356))

(check-sat)
(exit)
