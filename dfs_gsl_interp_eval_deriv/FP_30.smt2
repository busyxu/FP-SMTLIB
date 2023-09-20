(declare-fun x1_ack!799 () (_ BitVec 64))
(declare-fun x0_ack!802 () (_ BitVec 64))
(declare-fun x2_ack!800 () (_ BitVec 64))
(declare-fun xx_ack!801 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!802) ((_ to_fp 11 53) x1_ack!799)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!799) ((_ to_fp 11 53) x2_ack!800)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!799)
                       ((_ to_fp 11 53) x0_ack!802))
               ((_ to_fp 11 53) x0_ack!802))
       ((_ to_fp 11 53) x1_ack!799)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!799)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!799)
                       ((_ to_fp 11 53) x0_ack!802)))
       ((_ to_fp 11 53) x0_ack!802)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!800)
                       ((_ to_fp 11 53) x1_ack!799))
               ((_ to_fp 11 53) x1_ack!799))
       ((_ to_fp 11 53) x2_ack!800)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!800)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!800)
                       ((_ to_fp 11 53) x1_ack!799)))
       ((_ to_fp 11 53) x1_ack!799)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!799)
                    ((_ to_fp 11 53) x0_ack!802))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!800)
                    ((_ to_fp 11 53) x1_ack!799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!801) ((_ to_fp 11 53) x0_ack!802))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!801) ((_ to_fp 11 53) x2_ack!800))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!801) ((_ to_fp 11 53) x0_ack!802))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!801) ((_ to_fp 11 53) x1_ack!799)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!799) ((_ to_fp 11 53) xx_ack!801))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!800)
               ((_ to_fp 11 53) x1_ack!799))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
