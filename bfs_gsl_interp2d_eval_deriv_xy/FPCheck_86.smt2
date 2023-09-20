(declare-fun x1_ack!999 () (_ BitVec 64))
(declare-fun x0_ack!1005 () (_ BitVec 64))
(declare-fun y0_ack!1000 () (_ BitVec 64))
(declare-fun x_ack!1003 () (_ BitVec 64))
(declare-fun y_ack!1004 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!1002 () (_ BitVec 64))
(declare-fun z0_ack!1001 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1005) ((_ to_fp 11 53) x1_ack!999))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1000) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1003) ((_ to_fp 11 53) x0_ack!1005))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1003) ((_ to_fp 11 53) x1_ack!999))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1004) ((_ to_fp 11 53) y0_ack!1000))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1004) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1003) ((_ to_fp 11 53) x0_ack!1005))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1003) ((_ to_fp 11 53) x1_ack!999)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1004) ((_ to_fp 11 53) y0_ack!1000))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1004) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!999)
                       ((_ to_fp 11 53) x0_ack!1005))
               ((_ to_fp 11 53) x0_ack!1005))
       ((_ to_fp 11 53) x1_ack!999)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!999)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!999)
                       ((_ to_fp 11 53) x0_ack!1005)))
       ((_ to_fp 11 53) x0_ack!1005)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1000))
               ((_ to_fp 11 53) y0_ack!1000))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1000)))
       ((_ to_fp 11 53) y0_ack!1000)))
(assert (FPCHECK_FSUB_ACCURACY z0_ack!1001 z3_ack!1002))

(check-sat)
(exit)
