(declare-fun mu_ack!1223 () (_ BitVec 64))
(declare-fun x_ack!1224 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1223) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1224)
               ((_ to_fp 11 53) x_ack!1224))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1223))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!1223)
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
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!3)
                    ((_ to_fp 11 53) #x40c831cccccccccd)))
    #x40f8aa08cccccccd)))))

(check-sat)
(exit)
