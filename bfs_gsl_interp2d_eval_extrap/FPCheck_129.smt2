(declare-fun x1_ack!1342 () (_ BitVec 64))
(declare-fun x0_ack!1346 () (_ BitVec 64))
(declare-fun y0_ack!1343 () (_ BitVec 64))
(declare-fun x_ack!1344 () (_ BitVec 64))
(declare-fun y_ack!1345 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1346) ((_ to_fp 11 53) x1_ack!1342))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1343) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1344) ((_ to_fp 11 53) x0_ack!1346)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1345) ((_ to_fp 11 53) y0_ack!1343)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1342)
                       ((_ to_fp 11 53) x0_ack!1346))
               ((_ to_fp 11 53) x0_ack!1346))
       ((_ to_fp 11 53) x1_ack!1342)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1342)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1342)
                       ((_ to_fp 11 53) x0_ack!1346)))
       ((_ to_fp 11 53) x0_ack!1346)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 y0_ack!1343))

(check-sat)
(exit)
