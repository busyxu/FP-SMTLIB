(declare-fun x1_ack!381 () (_ BitVec 64))
(declare-fun x0_ack!384 () (_ BitVec 64))
(declare-fun x2_ack!382 () (_ BitVec 64))
(declare-fun xx_ack!383 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!384) ((_ to_fp 11 53) x1_ack!381)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!381) ((_ to_fp 11 53) x2_ack!382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!381)
                       ((_ to_fp 11 53) x0_ack!384))
               ((_ to_fp 11 53) x0_ack!384))
       ((_ to_fp 11 53) x1_ack!381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!381)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!381)
                       ((_ to_fp 11 53) x0_ack!384)))
       ((_ to_fp 11 53) x0_ack!384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!382)
                       ((_ to_fp 11 53) x1_ack!381))
               ((_ to_fp 11 53) x1_ack!381))
       ((_ to_fp 11 53) x2_ack!382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!382)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!382)
                       ((_ to_fp 11 53) x1_ack!381)))
       ((_ to_fp 11 53) x1_ack!381)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!381)
                    ((_ to_fp 11 53) x0_ack!384))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!382)
                    ((_ to_fp 11 53) x1_ack!381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!383) ((_ to_fp 11 53) x0_ack!384))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!383) ((_ to_fp 11 53) x2_ack!382))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!383) ((_ to_fp 11 53) x0_ack!384))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!383) ((_ to_fp 11 53) x1_ack!381))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!381 x0_ack!384))

(check-sat)
(exit)
