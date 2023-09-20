(declare-fun x1_ack!1372 () (_ BitVec 64))
(declare-fun x0_ack!1376 () (_ BitVec 64))
(declare-fun y0_ack!1373 () (_ BitVec 64))
(declare-fun x_ack!1374 () (_ BitVec 64))
(declare-fun y_ack!1375 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1376) ((_ to_fp 11 53) x1_ack!1372))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1373) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1374) ((_ to_fp 11 53) x0_ack!1376)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1375) ((_ to_fp 11 53) y0_ack!1373)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1372)
                       ((_ to_fp 11 53) x0_ack!1376))
               ((_ to_fp 11 53) x0_ack!1376))
       ((_ to_fp 11 53) x1_ack!1372)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1372)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1372)
                       ((_ to_fp 11 53) x0_ack!1376)))
       ((_ to_fp 11 53) x0_ack!1376)))

(check-sat)
(exit)
