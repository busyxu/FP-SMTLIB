(declare-fun a_ack!197 () (_ BitVec 64))
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_pow a_ack!197 #x3fd5555555555555))
                           (fp.mul roundNearestTiesToEven
                                   (CF_pow a_ack!197 #x3fd5555555555555)
                                   (CF_pow a_ack!197 #x3fd5555555555555))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_pow a_ack!197 #x3fd5555555555555))
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555))
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         (fp.mul roundNearestTiesToEven a!2 a!2))
                 a!1)
         (fp.mul roundNearestTiesToEven a!2 a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555))
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555)))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_pow a_ack!197 #x3fd5555555555555))
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555))
                   (fp.mul roundNearestTiesToEven
                           (CF_pow a_ack!197 #x3fd5555555555555)
                           (CF_pow a_ack!197 #x3fd5555555555555)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         (fp.mul roundNearestTiesToEven a!2 a!2))
                 (fp.mul roundNearestTiesToEven a!2 a!2))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!197)
                                   ((_ to_fp 11 53) a_ack!197))
                           ((_ to_fp 11 53) #x4020000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ca5dba2a61f34f2)))))
  (FPCHECK_FSUB_OVERFLOW a!4 #x0000000000000000))))))

(check-sat)
(exit)
