(declare-fun b_ack!171 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!171))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!171)
                           ((_ to_fp 11 53) b_ack!171))
                   ((_ to_fp 11 53) #x3ce952c77030ad4a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                         a!1)
                 ((_ to_fp 11 53) #x3d6ae7f3e733b81f))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!171)
                           ((_ to_fp 11 53) b_ack!171))
                   ((_ to_fp 11 53) #x3ce952c77030ad4a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3d6ae7f3e733b81f))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!171)
                                   ((_ to_fp 11 53) b_ack!171))
                           ((_ to_fp 11 53) #x3ca6827863b97d97)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3da93974a8c07c9d)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!171)
                                   ((_ to_fp 11 53) b_ack!171))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e21eed8eff8d898)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!171)
                                   ((_ to_fp 11 53) b_ack!171))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e927e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!171)
                                   ((_ to_fp 11 53) b_ack!171))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3efa01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!171)
                                   ((_ to_fp 11 53) b_ack!171))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f56c16c16c16c17)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!171)
                                   ((_ to_fp 11 53) b_ack!171))
                           a!5))))
  (FPCHECK_FADD_UNDERFLOW
    #x3fa5555555555555
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!171)
                    ((_ to_fp 11 53) b_ack!171))
            a!6)))))))))

(check-sat)
(exit)
