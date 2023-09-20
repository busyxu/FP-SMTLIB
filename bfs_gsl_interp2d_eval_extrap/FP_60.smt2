(declare-fun x1_ack!2376 () (_ BitVec 64))
(declare-fun x0_ack!2380 () (_ BitVec 64))
(declare-fun y0_ack!2377 () (_ BitVec 64))
(declare-fun x_ack!2378 () (_ BitVec 64))
(declare-fun y_ack!2379 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2380) ((_ to_fp 11 53) x1_ack!2376))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2377) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2378) ((_ to_fp 11 53) x0_ack!2380))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2378) ((_ to_fp 11 53) x1_ack!2376))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2379) ((_ to_fp 11 53) y0_ack!2377)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2376)
                       ((_ to_fp 11 53) x0_ack!2380))
               ((_ to_fp 11 53) x0_ack!2380))
       ((_ to_fp 11 53) x1_ack!2376)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2376)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2376)
                       ((_ to_fp 11 53) x0_ack!2380)))
       ((_ to_fp 11 53) x0_ack!2380)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2377))
               ((_ to_fp 11 53) y0_ack!2377))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2377)))
       ((_ to_fp 11 53) y0_ack!2377)))

(check-sat)
(exit)
