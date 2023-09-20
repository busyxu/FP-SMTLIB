(declare-fun x1_ack!6390 () (_ BitVec 64))
(declare-fun x0_ack!6397 () (_ BitVec 64))
(declare-fun x2_ack!6391 () (_ BitVec 64))
(declare-fun b_ack!6396 () (_ BitVec 64))
(declare-fun a_ack!6395 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6392 () (_ BitVec 64))
(declare-fun y1_ack!6393 () (_ BitVec 64))
(declare-fun y2_ack!6394 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6397) ((_ to_fp 11 53) x1_ack!6390)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6390) ((_ to_fp 11 53) x2_ack!6391)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6390)
                       ((_ to_fp 11 53) x0_ack!6397))
               ((_ to_fp 11 53) x0_ack!6397))
       ((_ to_fp 11 53) x1_ack!6390)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6390)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6390)
                       ((_ to_fp 11 53) x0_ack!6397)))
       ((_ to_fp 11 53) x0_ack!6397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6391)
                       ((_ to_fp 11 53) x1_ack!6390))
               ((_ to_fp 11 53) x1_ack!6390))
       ((_ to_fp 11 53) x2_ack!6391)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6391)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6391)
                       ((_ to_fp 11 53) x1_ack!6390)))
       ((_ to_fp 11 53) x1_ack!6390)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6390)
                    ((_ to_fp 11 53) x0_ack!6397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6391)
                    ((_ to_fp 11 53) x1_ack!6390))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6395) ((_ to_fp 11 53) b_ack!6396))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6395) ((_ to_fp 11 53) x0_ack!6397))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6396) ((_ to_fp 11 53) x2_ack!6391))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6395) ((_ to_fp 11 53) b_ack!6396))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6395) ((_ to_fp 11 53) x0_ack!6397))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6395) ((_ to_fp 11 53) x1_ack!6390))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6396) ((_ to_fp 11 53) x0_ack!6397))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6396) ((_ to_fp 11 53) x1_ack!6390)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6390) ((_ to_fp 11 53) b_ack!6396))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6390)
                    ((_ to_fp 11 53) x0_ack!6397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6394)
                           ((_ to_fp 11 53) y1_ack!6393))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6391)
                                   ((_ to_fp 11 53) x1_ack!6390)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6393)
                           ((_ to_fp 11 53) y0_ack!6392))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6390)
                                   ((_ to_fp 11 53) x0_ack!6397)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6391)
                                   ((_ to_fp 11 53) x1_ack!6390))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6390)
                                   ((_ to_fp 11 53) x0_ack!6397)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6395)
                           ((_ to_fp 11 53) x0_ack!6397))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!6390)
                           ((_ to_fp 11 53) x0_ack!6397))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6395)
                                   ((_ to_fp 11 53) x0_ack!6397))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6395)
                                   ((_ to_fp 11 53) x0_ack!6397)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6390)
                                   ((_ to_fp 11 53) x0_ack!6397))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6390)
                                   ((_ to_fp 11 53) x0_ack!6397))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!6395)
                                    ((_ to_fp 11 53) x0_ack!6397))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!6390)
                                    ((_ to_fp 11 53) x0_ack!6397))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6390)
                                   ((_ to_fp 11 53) x0_ack!6397))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!6390)
                                    ((_ to_fp 11 53) x0_ack!6397))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6393)
                                   ((_ to_fp 11 53) y0_ack!6392))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6390)
                                   ((_ to_fp 11 53) x0_ack!6397)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!6392)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!8
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!10))
    a!12)))))))

(check-sat)
(exit)
