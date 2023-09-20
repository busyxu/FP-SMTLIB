(declare-fun a_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!59))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!59)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!59)
                           ((_ to_fp 11 53) a_ack!59))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 ((_ to_fp 11 53) #x3ea937e11175f095))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!59)
                           ((_ to_fp 11 53) a_ack!59))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ea937e11175f095))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59))
                           ((_ to_fp 11 53) #xbe38d48ed61d7aab)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf11566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f6d41d41d41d41d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb999999999999a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!59)
                                   ((_ to_fp 11 53) a_ack!59))
                           a!3))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!59)
            ((_ to_fp 11 53) a_ack!59))
    a!4))))))

(check-sat)
(exit)
