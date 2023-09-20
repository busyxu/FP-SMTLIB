(declare-fun mu_ack!1239 () (_ BitVec 64))
(declare-fun x_ack!1240 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1239) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1240)
               ((_ to_fp 11 53) x_ack!1240))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1239))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!1239)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd18de5ab277f45)
                                   a!1)
                           ((_ to_fp 11 53) #x4011ff0656cbd324)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x40539ce434a9b101)))
                   ((_ to_fp 11 53) #x40917ad7c57c57c5))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!3)
                                   ((_ to_fp 11 53) #x40c831cccccccccd)))
                   ((_ to_fp 11 53) #x40f8aa08cccccccd))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!4)
            ((_ to_fp 11 53) #x4121130c00000000))))))))

(check-sat)
(exit)
