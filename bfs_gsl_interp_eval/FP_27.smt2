(declare-fun x1_ack!690 () (_ BitVec 64))
(declare-fun x0_ack!693 () (_ BitVec 64))
(declare-fun x2_ack!691 () (_ BitVec 64))
(declare-fun xx_ack!692 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!693) ((_ to_fp 11 53) x1_ack!690)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!690) ((_ to_fp 11 53) x2_ack!691)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!690)
                       ((_ to_fp 11 53) x0_ack!693))
               ((_ to_fp 11 53) x0_ack!693))
       ((_ to_fp 11 53) x1_ack!690)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!690)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!690)
                       ((_ to_fp 11 53) x0_ack!693)))
       ((_ to_fp 11 53) x0_ack!693)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!691)
                       ((_ to_fp 11 53) x1_ack!690))
               ((_ to_fp 11 53) x1_ack!690))
       ((_ to_fp 11 53) x2_ack!691)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!691)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!691)
                       ((_ to_fp 11 53) x1_ack!690)))
       ((_ to_fp 11 53) x1_ack!690)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!690)
                    ((_ to_fp 11 53) x0_ack!693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!691)
                    ((_ to_fp 11 53) x1_ack!690))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!692) ((_ to_fp 11 53) x0_ack!693))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!692) ((_ to_fp 11 53) x2_ack!691))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!692) ((_ to_fp 11 53) x0_ack!693))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!692) ((_ to_fp 11 53) x1_ack!690))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!690)
               ((_ to_fp 11 53) x0_ack!693))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
