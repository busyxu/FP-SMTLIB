(declare-fun h_ack!592 () (_ BitVec 64))
(declare-fun x_ack!593 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!593)
                    ((_ to_fp 11 53) h_ack!592))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000)))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!593)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!592)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!593)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!592)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) h_ack!592))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!3 a!4))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)))))
  (fp.gt a!2
         (fp.abs (fp.div roundNearestTiesToEven a!5 ((_ to_fp 11 53) h_ack!592)))))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) h_ack!592))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) h_ack!592))
                   ((_ to_fp 11 53) h_ack!592))))
  (not (fp.eq a!2
              (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) h_ack!592)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) h_ack!592)))))
  (fp.eq a!2 ((_ to_fp 11 53) h_ack!592)))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!593)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!592)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!593)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!592)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!3 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) h_ack!592))
                           #x3ff8000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!3)))))
  (FPCHECK_FDIV_INVALID
    (fp.sub roundNearestTiesToEven
            a!4
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    a!3))
    h_ack!592))))

(check-sat)
(exit)
