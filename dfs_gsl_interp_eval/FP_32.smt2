(declare-fun x1_ack!919 () (_ BitVec 64))
(declare-fun x0_ack!922 () (_ BitVec 64))
(declare-fun x2_ack!920 () (_ BitVec 64))
(declare-fun xx_ack!921 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!922) ((_ to_fp 11 53) x1_ack!919)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!919) ((_ to_fp 11 53) x2_ack!920)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!919)
                       ((_ to_fp 11 53) x0_ack!922))
               ((_ to_fp 11 53) x0_ack!922))
       ((_ to_fp 11 53) x1_ack!919)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!919)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!919)
                       ((_ to_fp 11 53) x0_ack!922)))
       ((_ to_fp 11 53) x0_ack!922)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!920)
                       ((_ to_fp 11 53) x1_ack!919))
               ((_ to_fp 11 53) x1_ack!919))
       ((_ to_fp 11 53) x2_ack!920)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!920)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!920)
                       ((_ to_fp 11 53) x1_ack!919)))
       ((_ to_fp 11 53) x1_ack!919)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!919)
                    ((_ to_fp 11 53) x0_ack!922))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!920)
                    ((_ to_fp 11 53) x1_ack!919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!921) ((_ to_fp 11 53) x0_ack!922))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!921) ((_ to_fp 11 53) x2_ack!920))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!921) ((_ to_fp 11 53) x0_ack!922))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!921) ((_ to_fp 11 53) x1_ack!919)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!919) ((_ to_fp 11 53) xx_ack!921))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!920)
               ((_ to_fp 11 53) x1_ack!919))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
