(declare-fun x1_ack!1004 () (_ BitVec 64))
(declare-fun x0_ack!1007 () (_ BitVec 64))
(declare-fun x2_ack!1005 () (_ BitVec 64))
(declare-fun xx_ack!1006 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1007) ((_ to_fp 11 53) x1_ack!1004)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1004) ((_ to_fp 11 53) x2_ack!1005)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1004)
                       ((_ to_fp 11 53) x0_ack!1007))
               ((_ to_fp 11 53) x0_ack!1007))
       ((_ to_fp 11 53) x1_ack!1004)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1004)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1004)
                       ((_ to_fp 11 53) x0_ack!1007)))
       ((_ to_fp 11 53) x0_ack!1007)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1005)
                       ((_ to_fp 11 53) x1_ack!1004))
               ((_ to_fp 11 53) x1_ack!1004))
       ((_ to_fp 11 53) x2_ack!1005)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1005)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1005)
                       ((_ to_fp 11 53) x1_ack!1004)))
       ((_ to_fp 11 53) x1_ack!1004)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1004)
                    ((_ to_fp 11 53) x0_ack!1007))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1005)
                    ((_ to_fp 11 53) x1_ack!1004))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1006) ((_ to_fp 11 53) x0_ack!1007))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1006) ((_ to_fp 11 53) x2_ack!1005))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1006) ((_ to_fp 11 53) x0_ack!1007))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1006) ((_ to_fp 11 53) x1_ack!1004)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1004) ((_ to_fp 11 53) xx_ack!1006))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1005)
               ((_ to_fp 11 53) x1_ack!1004))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
