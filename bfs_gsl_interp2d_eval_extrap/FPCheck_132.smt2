(declare-fun x1_ack!1362 () (_ BitVec 64))
(declare-fun x0_ack!1366 () (_ BitVec 64))
(declare-fun y0_ack!1363 () (_ BitVec 64))
(declare-fun x_ack!1364 () (_ BitVec 64))
(declare-fun y_ack!1365 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1366) ((_ to_fp 11 53) x1_ack!1362))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1363) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1364) ((_ to_fp 11 53) x0_ack!1366)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1365) ((_ to_fp 11 53) y0_ack!1363)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1362)
                       ((_ to_fp 11 53) x0_ack!1366))
               ((_ to_fp 11 53) x0_ack!1366))
       ((_ to_fp 11 53) x1_ack!1362)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1362)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1362)
                       ((_ to_fp 11 53) x0_ack!1366)))
       ((_ to_fp 11 53) x0_ack!1366)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!1364 x0_ack!1366))

(check-sat)
(exit)
