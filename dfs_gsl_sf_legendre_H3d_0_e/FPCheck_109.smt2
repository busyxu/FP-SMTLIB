(declare-fun b_ack!493 () (_ BitVec 64))
(declare-fun a_ack!494 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!493) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!493) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!494) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!494)
                       ((_ to_fp 11 53) b_ack!493)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!493) ((_ to_fp 11 53) #x403205966f2b4f12))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           (CF_sinh b_ack!493))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           ((_ to_fp 11 53) b_ack!493))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           ((_ to_fp 11 53) b_ack!493))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           ((_ to_fp 11 53) b_ack!493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4018000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493))
                           a!2)
                   a!2))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493)))
                   a!6)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven a!1 a!3))
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!493))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4059000000000000)))
                   (fp.abs a!7))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs a!1)
                   (fp.add roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   (fp.abs a!3))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x3cb0000000000000)))))
  (fp.eq a!10 a!9)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           (CF_sinh b_ack!493))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           ((_ to_fp 11 53) b_ack!493))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           ((_ to_fp 11 53) b_ack!493))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!494)
                           ((_ to_fp 11 53) b_ack!493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4018000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493))
                           a!2)
                   a!2))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493)))
                   a!6)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven a!1 a!3))
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!493))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4059000000000000)))
                   (fp.abs a!7))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.abs a!1)
                   (fp.add roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   (fp.abs a!3))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            a!9)
                    a!9)))
  (fp.eq a!10
         (fp.mul roundNearestTiesToEven
                 a!4
                 ((_ to_fp 11 53) #x3cb0000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   (CF_sinh b_ack!493)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!494)
                                   ((_ to_fp 11 53) b_ack!493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_ACCURACY #x3cc0000000000000 (fp.abs a!2)))))

(check-sat)
(exit)
