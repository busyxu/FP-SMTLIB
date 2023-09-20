(declare-fun x1_ack!1367 () (_ BitVec 64))
(declare-fun x0_ack!1371 () (_ BitVec 64))
(declare-fun y0_ack!1368 () (_ BitVec 64))
(declare-fun x_ack!1369 () (_ BitVec 64))
(declare-fun y_ack!1370 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1371) ((_ to_fp 11 53) x1_ack!1367))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1368) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1369) ((_ to_fp 11 53) x0_ack!1371)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1370) ((_ to_fp 11 53) y0_ack!1368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1367)
                       ((_ to_fp 11 53) x0_ack!1371))
               ((_ to_fp 11 53) x0_ack!1371))
       ((_ to_fp 11 53) x1_ack!1367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1367)
                       ((_ to_fp 11 53) x0_ack!1371)))
       ((_ to_fp 11 53) x0_ack!1371)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!1369 x0_ack!1371))

(check-sat)
(exit)
