(declare-fun x1_ack!627 () (_ BitVec 64))
(declare-fun x0_ack!631 () (_ BitVec 64))
(declare-fun y0_ack!628 () (_ BitVec 64))
(declare-fun x_ack!629 () (_ BitVec 64))
(declare-fun y_ack!630 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!631) ((_ to_fp 11 53) x1_ack!627))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!628) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!629) ((_ to_fp 11 53) x0_ack!631))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!629) ((_ to_fp 11 53) x1_ack!627))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!630) ((_ to_fp 11 53) y0_ack!628))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!630) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!629) ((_ to_fp 11 53) x0_ack!631))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!629) ((_ to_fp 11 53) x1_ack!627))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!630) ((_ to_fp 11 53) y0_ack!628))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!630) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!627)
                       ((_ to_fp 11 53) x0_ack!631))
               ((_ to_fp 11 53) x0_ack!631))
       ((_ to_fp 11 53) x1_ack!627)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!627)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!627)
                       ((_ to_fp 11 53) x0_ack!631)))
       ((_ to_fp 11 53) x0_ack!631)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!628))
               ((_ to_fp 11 53) y0_ack!628))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!628)))
       ((_ to_fp 11 53) y0_ack!628)))

(check-sat)
(exit)
