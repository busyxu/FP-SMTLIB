(declare-fun a_ack!397 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!397))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!397))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!397))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!397))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           ((_ to_fp 11 53) #x3fe20dd750429b62))
                   ((_ to_fp 11 53) #x3ff467e6dad8642a)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4002158ffa22f7a8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!1)
                   ((_ to_fp 11 53) #x40141381c5862508)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!6)
                   ((_ to_fp 11 53) #x4022cac4f877aa8b))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!2)
                   ((_ to_fp 11 53) #x4018a40e0d3e694c)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!7)
                   ((_ to_fp 11 53) #x402819103a226d88))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!3)
                   ((_ to_fp 11 53) #x401da3930a99d8df)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!8)
                   ((_ to_fp 11 53) #x403114d94d02eda4))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!397))
                           a!4)
                   ((_ to_fp 11 53) #x4007d4b780645377)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.abs ((_ to_fp 11 53) a_ack!397))
                            a!9)
                    ((_ to_fp 11 53) #x402337ca4da961c6))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.abs ((_ to_fp 11 53) a_ack!397))
                            a!10)
                    ((_ to_fp 11 53) #x400af3ddb3be0af7))))
  (FPCHECK_FDIV_ZERO a!5 a!11))))))))

(check-sat)
(exit)
