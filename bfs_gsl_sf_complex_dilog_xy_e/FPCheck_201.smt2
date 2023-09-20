(declare-fun b_ack!649 () (_ BitVec 64))
(declare-fun a_ack!650 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!649) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   ((_ to_fp 11 53) a_ack!650))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!649)
                                   ((_ to_fp 11 53) b_ack!649)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!650)
                                  ((_ to_fp 11 53) a_ack!650))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!649)
                                  ((_ to_fp 11 53) b_ack!649)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!650)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   ((_ to_fp 11 53) a_ack!650))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!649)
                                   ((_ to_fp 11 53) b_ack!649))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fe76c8b43958106)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!650)
                           ((_ to_fp 11 53) a_ack!650))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!649)
                           ((_ to_fp 11 53) b_ack!649)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff8000000000001)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!649))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!650)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!5))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.sub roundNearestTiesToEven
                           a!5
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!5)
                                   a!8)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!6))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!6))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!5)
                            a!9)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x7ff8000000000001)
                                    a!5)
                            a!9))))
  (FPCHECK_FADD_UNDERFLOW a!7 a!10)))))))

(check-sat)
(exit)
