(declare-fun x1_ack!1006 () (_ BitVec 64))
(declare-fun x0_ack!1010 () (_ BitVec 64))
(declare-fun y0_ack!1007 () (_ BitVec 64))
(declare-fun x_ack!1008 () (_ BitVec 64))
(declare-fun y_ack!1009 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1010) ((_ to_fp 11 53) x1_ack!1006))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1007) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1008) ((_ to_fp 11 53) x0_ack!1010))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1008) ((_ to_fp 11 53) x1_ack!1006))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1009) ((_ to_fp 11 53) y0_ack!1007))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1009) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1008) ((_ to_fp 11 53) x0_ack!1010))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1008) ((_ to_fp 11 53) x1_ack!1006)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1009) ((_ to_fp 11 53) y0_ack!1007))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1009) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1006)
                       ((_ to_fp 11 53) x0_ack!1010))
               ((_ to_fp 11 53) x0_ack!1010))
       ((_ to_fp 11 53) x1_ack!1006)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1006)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1006)
                       ((_ to_fp 11 53) x0_ack!1010)))
       ((_ to_fp 11 53) x0_ack!1010)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1007))
               ((_ to_fp 11 53) y0_ack!1007))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1007)))
       ((_ to_fp 11 53) y0_ack!1007)))

(check-sat)
(exit)
