(declare-fun h_ack!614 () (_ BitVec 64))
(declare-fun x_ack!615 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!615)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!614)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!615)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!614)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!615)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!614)))
                   #x3ff8000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!615)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!614)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!615)
                                   ((_ to_fp 11 53) h_ack!614))
                           #x3ff8000000000000)
                   a!1))
      (a!5 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!615)
                                   ((_ to_fp 11 53) h_ack!614))
                           #x3ff8000000000000)
                   a!4)))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) h_ack!614))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401d555555555555)
                                   a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034aaaaaaaaaaab)
                                   (fp.sub roundNearestTiesToEven a!4 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4031555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!6)))))
  (fp.gt a!3
         (fp.abs (fp.div roundNearestTiesToEven a!7 ((_ to_fp 11 53) h_ack!614))))))))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!615)
                                   ((_ to_fp 11 53) h_ack!614))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!615)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!614)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!615)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!614)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!615)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!614)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                           (fp.abs a!3))
                   (fp.abs a!4))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4044ab851eb851ec)
                    a!5)
            ((_ to_fp 11 53) #x3cb0000000000000))
    h_ack!614))))

(check-sat)
(exit)
