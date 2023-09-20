(declare-fun x1_ack!651 () (_ BitVec 64))
(declare-fun x0_ack!654 () (_ BitVec 64))
(declare-fun x2_ack!652 () (_ BitVec 64))
(declare-fun xx_ack!653 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!654) ((_ to_fp 11 53) x1_ack!651)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!651) ((_ to_fp 11 53) x2_ack!652)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!651)
                       ((_ to_fp 11 53) x0_ack!654))
               ((_ to_fp 11 53) x0_ack!654))
       ((_ to_fp 11 53) x1_ack!651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!651)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!651)
                       ((_ to_fp 11 53) x0_ack!654)))
       ((_ to_fp 11 53) x0_ack!654)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!652)
                       ((_ to_fp 11 53) x1_ack!651))
               ((_ to_fp 11 53) x1_ack!651))
       ((_ to_fp 11 53) x2_ack!652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!652)
                       ((_ to_fp 11 53) x1_ack!651)))
       ((_ to_fp 11 53) x1_ack!651)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!651)
                    ((_ to_fp 11 53) x0_ack!654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!652)
                    ((_ to_fp 11 53) x1_ack!651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!653) ((_ to_fp 11 53) x0_ack!654))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!653) ((_ to_fp 11 53) x2_ack!652))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!653) ((_ to_fp 11 53) x0_ack!654))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!653) ((_ to_fp 11 53) x1_ack!651))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!651)
               ((_ to_fp 11 53) x0_ack!654))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
