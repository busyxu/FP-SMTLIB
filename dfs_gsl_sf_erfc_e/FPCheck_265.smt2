(declare-fun a_ack!400 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!400))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!400))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!400))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!400)
                                   ((_ to_fp 11 53) a_ack!400))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           ((_ to_fp 11 53) #x3fe20dd750429b62))
                   ((_ to_fp 11 53) #x3ff467e6dad8642a)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4002158ffa22f7a8)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.abs ((_ to_fp 11 53) a_ack!400)))
                    (fp.abs ((_ to_fp 11 53) a_ack!400)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           a!2)
                   ((_ to_fp 11 53) #x40141381c5862508)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           a!7)
                   ((_ to_fp 11 53) #x4022cac4f877aa8b))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           a!3)
                   ((_ to_fp 11 53) #x4018a40e0d3e694c)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           a!8)
                   ((_ to_fp 11 53) #x402819103a226d88))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           a!4)
                   ((_ to_fp 11 53) #x401da3930a99d8df)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.abs ((_ to_fp 11 53) a_ack!400))
                            a!9)
                    ((_ to_fp 11 53) #x403114d94d02eda4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!400))
                           a!5)
                   ((_ to_fp 11 53) #x4007d4b780645377)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.abs ((_ to_fp 11 53) a_ack!400))
                            a!10)
                    ((_ to_fp 11 53) #x402337ca4da961c6))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.abs ((_ to_fp 11 53) a_ack!400))
                            a!11)
                    ((_ to_fp 11 53) #x400af3ddb3be0af7))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!6 a!12)
                                    (CF_exp a!13)))))
      (a!15 (fp.abs (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!6 a!12)
                                    (CF_exp a!13))))))
  (FPCHECK_FADD_UNDERFLOW
    a!14
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cc0000000000000) a!15))))))))))

(check-sat)
(exit)
