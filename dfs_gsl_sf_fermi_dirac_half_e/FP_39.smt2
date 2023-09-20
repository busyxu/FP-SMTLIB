(declare-fun a_ack!406 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!406) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!406) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven (CF_exp a_ack!406) a!1)
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe5555555555555)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (CF_exp a_ack!406))
                   ((_ to_fp 11 53) #x3fe5555555555555))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fea20bd700c2c3e))
                 a!1)
         ((_ to_fp 11 53) #x3fea20bd700c2c3e))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (CF_exp a_ack!406))
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
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fea20bd700c2c3e))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)))))
  (fp.eq a!4
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven (CF_exp a_ack!406) a!1)
                 a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fea20bd700c2c3e))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2))))
  (fp.eq a!4
         (fp.add roundNearestTiesToEven
                 (CF_exp a_ack!406)
                 (fp.mul roundNearestTiesToEven (CF_exp a_ack!406) a!1)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fea20bd700c2c3e))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2)
                   a!3)))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe8000000000000))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2)
                   a!4)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!5)
                 a!3)
         a!5))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe5555555555555))
                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!406))
                           ((_ to_fp 11 53) #x3fe8000000000000))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp a_ack!406)
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_exp a_ack!406)
                                   a!1)
                           a!2)
                   a!4)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!3 a!5)
                 a!5)
         a!3))))

(check-sat)
(exit)
