(declare-fun a_ack!544 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!544) (CF_floor a_ack!544))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!544)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!544)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!1)
         (CF_pow a_ack!544
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe0000000000000)
                         ((_ to_fp 11 53) a_ack!544)))))))
(assert (let ((a!1 (fp.abs (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (CF_pow a_ack!544
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!544))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!544)
                                   ((_ to_fp 11 53) a_ack!544)))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!1)
                 ((_ to_fp 11 53) #x3f7a41a41a41a41a))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!544)
                                   ((_ to_fp 11 53) a_ack!544)))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3f7a41a41a41a41a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) a_ack!544)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                         a!2)
                 ((_ to_fp 11 53) #xbf5f6ab0d9993c7d))
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) a_ack!544)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!544)
                                   ((_ to_fp 11 53) a_ack!544))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) a_ack!544)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                                   a!2))
                   a!1)))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                 a!2))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) a_ack!544)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
(let ((a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                                  a!2))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) a_ack!544)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                                   a!2))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                           a!2))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) a_ack!544)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (FPCHECK_FADD_ACCURACY
    #x3f4b951e2b18ff23
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                    a!2))))))

(check-sat)
(exit)
