(declare-fun x1_ack!192 () (_ BitVec 64))
(declare-fun x0_ack!196 () (_ BitVec 64))
(declare-fun y0_ack!193 () (_ BitVec 64))
(declare-fun x_ack!194 () (_ BitVec 64))
(declare-fun y_ack!195 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!196) ((_ to_fp 11 53) x1_ack!192))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!193) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!194) ((_ to_fp 11 53) x0_ack!196))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!194) ((_ to_fp 11 53) x1_ack!192))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!195) ((_ to_fp 11 53) y0_ack!193))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!195) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!194) ((_ to_fp 11 53) x0_ack!196))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!194) ((_ to_fp 11 53) x1_ack!192))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!195) ((_ to_fp 11 53) y0_ack!193))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!195) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!192)
                       ((_ to_fp 11 53) x0_ack!196))
               ((_ to_fp 11 53) x0_ack!196))
       ((_ to_fp 11 53) x1_ack!192)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!192)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!192)
                       ((_ to_fp 11 53) x0_ack!196)))
       ((_ to_fp 11 53) x0_ack!196)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!193))
               ((_ to_fp 11 53) y0_ack!193))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!193)))
       ((_ to_fp 11 53) y0_ack!193)))

(check-sat)
(exit)
