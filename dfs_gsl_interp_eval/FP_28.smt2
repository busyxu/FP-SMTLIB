(declare-fun x1_ack!736 () (_ BitVec 64))
(declare-fun x0_ack!739 () (_ BitVec 64))
(declare-fun x2_ack!737 () (_ BitVec 64))
(declare-fun xx_ack!738 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!739) ((_ to_fp 11 53) x1_ack!736)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!736) ((_ to_fp 11 53) x2_ack!737)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!736)
                       ((_ to_fp 11 53) x0_ack!739))
               ((_ to_fp 11 53) x0_ack!739))
       ((_ to_fp 11 53) x1_ack!736)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!736)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!736)
                       ((_ to_fp 11 53) x0_ack!739)))
       ((_ to_fp 11 53) x0_ack!739)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!737)
                       ((_ to_fp 11 53) x1_ack!736))
               ((_ to_fp 11 53) x1_ack!736))
       ((_ to_fp 11 53) x2_ack!737)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!737)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!737)
                       ((_ to_fp 11 53) x1_ack!736)))
       ((_ to_fp 11 53) x1_ack!736)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!736)
                    ((_ to_fp 11 53) x0_ack!739))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!737)
                    ((_ to_fp 11 53) x1_ack!736))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!738) ((_ to_fp 11 53) x0_ack!739))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!738) ((_ to_fp 11 53) x2_ack!737))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!738) ((_ to_fp 11 53) x0_ack!739))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!738) ((_ to_fp 11 53) x1_ack!736)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!736) ((_ to_fp 11 53) xx_ack!738))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!737)
               ((_ to_fp 11 53) x1_ack!736))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
