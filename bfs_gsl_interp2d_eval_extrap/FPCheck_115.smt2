(declare-fun x1_ack!1202 () (_ BitVec 64))
(declare-fun x0_ack!1206 () (_ BitVec 64))
(declare-fun y0_ack!1203 () (_ BitVec 64))
(declare-fun x_ack!1204 () (_ BitVec 64))
(declare-fun y_ack!1205 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1206) ((_ to_fp 11 53) x1_ack!1202))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1203) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1204) ((_ to_fp 11 53) x0_ack!1206))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1204) ((_ to_fp 11 53) x1_ack!1202))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1205) ((_ to_fp 11 53) y0_ack!1203))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1205) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1202)
                       ((_ to_fp 11 53) x0_ack!1206))
               ((_ to_fp 11 53) x0_ack!1206))
       ((_ to_fp 11 53) x1_ack!1202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1202)
                       ((_ to_fp 11 53) x0_ack!1206)))
       ((_ to_fp 11 53) x0_ack!1206)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 y0_ack!1203))

(check-sat)
(exit)
