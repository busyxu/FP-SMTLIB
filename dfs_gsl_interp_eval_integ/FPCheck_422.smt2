(declare-fun x1_ack!5209 () (_ BitVec 64))
(declare-fun x0_ack!5213 () (_ BitVec 64))
(declare-fun x2_ack!5210 () (_ BitVec 64))
(declare-fun b_ack!5212 () (_ BitVec 64))
(declare-fun a_ack!5211 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5213) ((_ to_fp 11 53) x1_ack!5209)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5209) ((_ to_fp 11 53) x2_ack!5210)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5209)
                       ((_ to_fp 11 53) x0_ack!5213))
               ((_ to_fp 11 53) x0_ack!5213))
       ((_ to_fp 11 53) x1_ack!5209)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5209)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5209)
                       ((_ to_fp 11 53) x0_ack!5213)))
       ((_ to_fp 11 53) x0_ack!5213)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5210)
                       ((_ to_fp 11 53) x1_ack!5209))
               ((_ to_fp 11 53) x1_ack!5209))
       ((_ to_fp 11 53) x2_ack!5210)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5210)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5210)
                       ((_ to_fp 11 53) x1_ack!5209)))
       ((_ to_fp 11 53) x1_ack!5209)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5209)
                    ((_ to_fp 11 53) x0_ack!5213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5210)
                    ((_ to_fp 11 53) x1_ack!5209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5211) ((_ to_fp 11 53) b_ack!5212))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5211) ((_ to_fp 11 53) x0_ack!5213))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5212) ((_ to_fp 11 53) x2_ack!5210))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5211) ((_ to_fp 11 53) b_ack!5212))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5211) ((_ to_fp 11 53) x0_ack!5213))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5211) ((_ to_fp 11 53) x1_ack!5209)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5209) ((_ to_fp 11 53) a_ack!5211))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5212) ((_ to_fp 11 53) x1_ack!5209))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5212) ((_ to_fp 11 53) x2_ack!5210)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5210)
                    ((_ to_fp 11 53) x1_ack!5209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5211)
                       ((_ to_fp 11 53) x1_ack!5209))
               ((_ to_fp 11 53) x1_ack!5209))
       ((_ to_fp 11 53) a_ack!5211)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5211)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5211)
                       ((_ to_fp 11 53) x1_ack!5209)))
       ((_ to_fp 11 53) x1_ack!5209)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5211)
                                  ((_ to_fp 11 53) x1_ack!5209)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5211)
                                   ((_ to_fp 11 53) x1_ack!5209))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5211)
                                   ((_ to_fp 11 53) x1_ack!5209)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5211)
                           ((_ to_fp 11 53) x1_ack!5209)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5211)
                 ((_ to_fp 11 53) x1_ack!5209)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5211)
                                  ((_ to_fp 11 53) x1_ack!5209)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5211)
                                   ((_ to_fp 11 53) x1_ack!5209))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5211)
                                   ((_ to_fp 11 53) x1_ack!5209)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5211)
                           ((_ to_fp 11 53) x1_ack!5209)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5211)
                 ((_ to_fp 11 53) x1_ack!5209)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5212)
          ((_ to_fp 11 53) x1_ack!5209))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5212)
          ((_ to_fp 11 53) x1_ack!5209))))

(check-sat)
(exit)
