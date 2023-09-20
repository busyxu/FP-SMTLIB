(declare-fun h_ack!666 () (_ BitVec 64))
(declare-fun x_ack!667 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!667)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) h_ack!666)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!667)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  a!1
                                  (CF_pow a!2 #x3ff8000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (and (not a!3)
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x8000000000000000)
                               ((_ to_fp 11 53) h_ack!666))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!4)))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!667)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!2 #x3ff8000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) h_ack!666))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401d555555555555)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   (CF_pow a!4 #x3ff8000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!4 #x3ff8000000000000)
                                   (CF_pow a!2 #x3ff8000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven
                                   (CF_pow a!2 #x3ff8000000000000)
                                   (CF_pow a!6 #x3ff8000000000000))))))
(let ((a!8 (fp.abs (fp.div roundNearestTiesToEven
                           a!7
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))))))
  (fp.gt (fp.abs a!3) a!8))))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!667)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666)))
                   #x3ff8000000000000))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!667)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!666))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs (CF_pow a!2 #x3ff8000000000000)))
                   (fp.abs (CF_pow a!3 #x3ff8000000000000)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4044ab851eb851ec)
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.abs (CF_pow a!5 #x3ff8000000000000))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven a!6 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            ((_ to_fp 11 53) h_ack!666)))))))

(check-sat)
(exit)
