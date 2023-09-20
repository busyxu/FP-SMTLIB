(declare-fun x_ack!119 () (_ BitVec 64))
(declare-fun epsrel_ack!121 () (_ BitVec 64))
(declare-fun epsabs_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) x_ack!119))
                          ((_ to_fp 11 53) #x0000000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) x_ack!119) a!2)
                 a!2)
         ((_ to_fp 11 53) x_ack!119)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x_ack!119)
                 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) x_ack!119) a!2))
         a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #xc014000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2)))))
  (fp.eq a!5 ((_ to_fp 11 53) #xc014000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #xc014000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!4
                 ((_ to_fp 11 53) #xc014000000000000))
         (fp.mul roundNearestTiesToEven
                 a!3
                 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) x_ack!119) a!2))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #xc014000000000000))))
  (not (or (fp.isNaN (fp.abs a!4))
           (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x7ff0000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!119)
                                   a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not (or (fp.isNaN (fp.abs a!3))
           (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!121)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!120)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!119))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) x_ack!119))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) x_ack!119) a!2)
    x_ack!119))))

(check-sat)
(exit)
