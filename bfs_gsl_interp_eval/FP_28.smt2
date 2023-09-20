(declare-fun x1_ack!749 () (_ BitVec 64))
(declare-fun x0_ack!752 () (_ BitVec 64))
(declare-fun x2_ack!750 () (_ BitVec 64))
(declare-fun xx_ack!751 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!752) ((_ to_fp 11 53) x1_ack!749)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!749) ((_ to_fp 11 53) x2_ack!750)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!749)
                       ((_ to_fp 11 53) x0_ack!752))
               ((_ to_fp 11 53) x0_ack!752))
       ((_ to_fp 11 53) x1_ack!749)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!749)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!749)
                       ((_ to_fp 11 53) x0_ack!752)))
       ((_ to_fp 11 53) x0_ack!752)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!750)
                       ((_ to_fp 11 53) x1_ack!749))
               ((_ to_fp 11 53) x1_ack!749))
       ((_ to_fp 11 53) x2_ack!750)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!750)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!750)
                       ((_ to_fp 11 53) x1_ack!749)))
       ((_ to_fp 11 53) x1_ack!749)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!749)
                    ((_ to_fp 11 53) x0_ack!752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!750)
                    ((_ to_fp 11 53) x1_ack!749))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!751) ((_ to_fp 11 53) x0_ack!752))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!751) ((_ to_fp 11 53) x2_ack!750))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!751) ((_ to_fp 11 53) x0_ack!752))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!751) ((_ to_fp 11 53) x1_ack!749))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!749)
               ((_ to_fp 11 53) x0_ack!752))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
