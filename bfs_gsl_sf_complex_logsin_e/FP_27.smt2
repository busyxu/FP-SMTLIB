(declare-fun b_ack!221 () (_ BitVec 64))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!222 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!221) ((_ to_fp 11 53) #x404e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!221) ((_ to_fp 11 53) #xc04e000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!221))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           ((_ to_fp 11 53) #x3ca6827863b97d97)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3da93974a8c07c9d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e21eed8eff8d898)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e927e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3efa01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f56c16c16c16c17)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa5555555555555)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!6))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!221)
                                   ((_ to_fp 11 53) b_ack!221))
                           a!8)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.eq (fp.mul roundNearestTiesToEven (CF_sin a_ack!222) a!9)
              ((_ to_fp 11 53) #x0000000000000000)))))))))))))

(check-sat)
(exit)
