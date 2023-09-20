(declare-fun x1_ack!1212 () (_ BitVec 64))
(declare-fun x0_ack!1216 () (_ BitVec 64))
(declare-fun y0_ack!1213 () (_ BitVec 64))
(declare-fun x_ack!1214 () (_ BitVec 64))
(declare-fun y_ack!1215 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1216) ((_ to_fp 11 53) x1_ack!1212))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1213) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1214) ((_ to_fp 11 53) x0_ack!1216))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1214) ((_ to_fp 11 53) x1_ack!1212))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1215) ((_ to_fp 11 53) y0_ack!1213))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1215) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1212)
                       ((_ to_fp 11 53) x0_ack!1216))
               ((_ to_fp 11 53) x0_ack!1216))
       ((_ to_fp 11 53) x1_ack!1212)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1212)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1212)
                       ((_ to_fp 11 53) x0_ack!1216)))
       ((_ to_fp 11 53) x0_ack!1216)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1213))
               ((_ to_fp 11 53) y0_ack!1213))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1213)))
       ((_ to_fp 11 53) y0_ack!1213)))

(check-sat)
(exit)
