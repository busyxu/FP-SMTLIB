(declare-fun x1_ack!6458 () (_ BitVec 64))
(declare-fun x0_ack!6465 () (_ BitVec 64))
(declare-fun x2_ack!6459 () (_ BitVec 64))
(declare-fun b_ack!6464 () (_ BitVec 64))
(declare-fun a_ack!6463 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6460 () (_ BitVec 64))
(declare-fun y1_ack!6461 () (_ BitVec 64))
(declare-fun y2_ack!6462 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6465) ((_ to_fp 11 53) x1_ack!6458)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6458) ((_ to_fp 11 53) x2_ack!6459)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6458)
                       ((_ to_fp 11 53) x0_ack!6465))
               ((_ to_fp 11 53) x0_ack!6465))
       ((_ to_fp 11 53) x1_ack!6458)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6458)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6458)
                       ((_ to_fp 11 53) x0_ack!6465)))
       ((_ to_fp 11 53) x0_ack!6465)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6459)
                       ((_ to_fp 11 53) x1_ack!6458))
               ((_ to_fp 11 53) x1_ack!6458))
       ((_ to_fp 11 53) x2_ack!6459)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6459)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6459)
                       ((_ to_fp 11 53) x1_ack!6458)))
       ((_ to_fp 11 53) x1_ack!6458)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6458)
                    ((_ to_fp 11 53) x0_ack!6465))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6459)
                    ((_ to_fp 11 53) x1_ack!6458))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6463) ((_ to_fp 11 53) b_ack!6464))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6463) ((_ to_fp 11 53) x0_ack!6465))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6464) ((_ to_fp 11 53) x2_ack!6459))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6463) ((_ to_fp 11 53) b_ack!6464))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6463) ((_ to_fp 11 53) x0_ack!6465))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6463) ((_ to_fp 11 53) x1_ack!6458)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6458) ((_ to_fp 11 53) a_ack!6463))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6464) ((_ to_fp 11 53) x1_ack!6458))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6464) ((_ to_fp 11 53) x2_ack!6459))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6459)
                    ((_ to_fp 11 53) x1_ack!6458))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6462)
                           ((_ to_fp 11 53) y1_ack!6461))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6459)
                                   ((_ to_fp 11 53) x1_ack!6458)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6461)
                           ((_ to_fp 11 53) y0_ack!6460))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6458)
                                   ((_ to_fp 11 53) x0_ack!6465)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6459)
                                   ((_ to_fp 11 53) x1_ack!6458))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6458)
                                   ((_ to_fp 11 53) x0_ack!6465))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6459)
                                   ((_ to_fp 11 53) x1_ack!6458))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!6462)
                                   ((_ to_fp 11 53) y1_ack!6461))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6459)
                                   ((_ to_fp 11 53) x1_ack!6458)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
