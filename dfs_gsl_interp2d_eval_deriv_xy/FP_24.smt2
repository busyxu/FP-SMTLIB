(declare-fun x1_ack!940 () (_ BitVec 64))
(declare-fun x0_ack!944 () (_ BitVec 64))
(declare-fun y0_ack!941 () (_ BitVec 64))
(declare-fun x_ack!942 () (_ BitVec 64))
(declare-fun y_ack!943 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!944) ((_ to_fp 11 53) x1_ack!940))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!941) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!942) ((_ to_fp 11 53) x0_ack!944))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!942) ((_ to_fp 11 53) x1_ack!940))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!943) ((_ to_fp 11 53) y0_ack!941))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!943) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!942) ((_ to_fp 11 53) x0_ack!944))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!942) ((_ to_fp 11 53) x1_ack!940)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!943) ((_ to_fp 11 53) y0_ack!941))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!943) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!940)
                       ((_ to_fp 11 53) x0_ack!944))
               ((_ to_fp 11 53) x0_ack!944))
       ((_ to_fp 11 53) x1_ack!940)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!940)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!940)
                       ((_ to_fp 11 53) x0_ack!944)))
       ((_ to_fp 11 53) x0_ack!944)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!941))
               ((_ to_fp 11 53) y0_ack!941))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!941)))
       ((_ to_fp 11 53) y0_ack!941)))

(check-sat)
(exit)
