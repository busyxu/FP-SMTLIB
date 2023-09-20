(declare-fun a_ack!420 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!420) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!420) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 (CF_exp a_ack!420))
         (fp.mul roundNearestTiesToEven
                 (CF_exp a_ack!420)
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))))
  (fp.eq a!3 (CF_exp a_ack!420))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
                   a!2)))
  (not (fp.lt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fe5555555555555))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fe5555555555555))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fea20bd700c2c3e))
                 a!1)
         ((_ to_fp 11 53) #x3fea20bd700c2c3e))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fe5555555555555))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fea20bd700c2c3e))
                 ((_ to_fp 11 53) #x3fea20bd700c2c3e))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fe5555555555555))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!4)
                 a!2)
         a!4))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!420))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fe5555555555555))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_exp a_ack!420)
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp a_ack!420)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!4)
                 a!4)
         a!2))))

(check-sat)
(exit)
