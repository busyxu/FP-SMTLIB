(declare-fun a_ack!344 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!344) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!344)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!344)
                                   a!1)
                           a!2)
                   (fp.add roundNearestTiesToEven (CF_exp a_ack!344) a!1))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!344)
                                   a!1)
                           a!2)
                   a!2)))
  (fp.eq a!3 (fp.add roundNearestTiesToEven (CF_exp a_ack!344) a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_exp a_ack!344)
                                   a!1)
                           a!2))))
  (not (fp.lt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (CF_exp a_ack!344)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3febb67ae8584caa))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (CF_exp a_ack!344)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3febb67ae8584caa))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3febb67ae8584caa))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (CF_exp a_ack!344)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (CF_exp a_ack!344))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3febb67ae8584caa)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (CF_exp a_ack!344))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!344)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp a_ack!344))
                           ((_ to_fp 11 53) #x3febb67ae8584caa)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (CF_exp a_ack!344) a!1)
            a!2)
    a!3)))))

(check-sat)
(exit)
