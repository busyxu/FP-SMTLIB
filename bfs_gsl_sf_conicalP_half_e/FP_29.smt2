(declare-fun b_ack!379 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!380 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!379) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!379) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!379) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!380)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!379)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!379)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!380)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!379)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1))))
      (a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   (fp.mul roundNearestTiesToEven a!3 a!3))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!5 (fp.abs (fp.mul roundNearestTiesToEven
                           (CF_sin a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cc0000000000000)
                                   (fp.abs a!3)))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven a!3 a!3)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe9884533d43651))
                           ((_ to_fp 11 53) #x3ff50ea39fcbf166))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   (fp.abs a!6)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cd0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe3667dcf21247e)
                                   a!6)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!7 a!8)
                 a!7)
         a!8)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!379)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!380)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!379)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1))))
      (a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   (fp.mul roundNearestTiesToEven a!3 a!3))
                           ((_ to_fp 11 53) #x4028000000000000))))
      (a!5 (fp.abs (fp.mul roundNearestTiesToEven
                           (CF_sin a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cc0000000000000)
                                   (fp.abs a!3)))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven a!3 a!3)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe9884533d43651))
                           ((_ to_fp 11 53) #x3ff50ea39fcbf166))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 a!5)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   (fp.abs a!6)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cd0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe3667dcf21247e)
                                   a!6)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!7 a!8)
                 a!8)
         a!7)))))

(check-sat)
(exit)
