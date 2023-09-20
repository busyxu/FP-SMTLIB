(declare-fun x1_ack!946 () (_ BitVec 64))
(declare-fun x0_ack!949 () (_ BitVec 64))
(declare-fun x2_ack!947 () (_ BitVec 64))
(declare-fun xx_ack!948 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!949) ((_ to_fp 11 53) x1_ack!946)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!946) ((_ to_fp 11 53) x2_ack!947)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!946)
                       ((_ to_fp 11 53) x0_ack!949))
               ((_ to_fp 11 53) x0_ack!949))
       ((_ to_fp 11 53) x1_ack!946)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!946)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!946)
                       ((_ to_fp 11 53) x0_ack!949)))
       ((_ to_fp 11 53) x0_ack!949)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!947)
                       ((_ to_fp 11 53) x1_ack!946))
               ((_ to_fp 11 53) x1_ack!946))
       ((_ to_fp 11 53) x2_ack!947)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!947)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!947)
                       ((_ to_fp 11 53) x1_ack!946)))
       ((_ to_fp 11 53) x1_ack!946)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!946)
                    ((_ to_fp 11 53) x0_ack!949))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!947)
                    ((_ to_fp 11 53) x1_ack!946))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!948) ((_ to_fp 11 53) x0_ack!949))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!948) ((_ to_fp 11 53) x2_ack!947))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!948) ((_ to_fp 11 53) x0_ack!949))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!948) ((_ to_fp 11 53) x1_ack!946))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!946)
               ((_ to_fp 11 53) x0_ack!949))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
