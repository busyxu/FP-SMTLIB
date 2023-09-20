(declare-fun a_ack!107 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!107) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!107) ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a_ack!107)
                                   ((_ to_fp 11 53) #x4018000000000000)))
                   (fp.div roundNearestTiesToEven
                           (CF_exp a_ack!107)
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a_ack!107)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 (CF_exp a_ack!107)
                 ((_ to_fp 11 53) #x4018000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!107)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a_ack!107)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fd0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!107)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a_ack!107)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fd0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fd0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp a_ack!107)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a_ack!107)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (FPCHECK_FSUB_OVERFLOW
    #x3fd5555555555555
    (fp.mul roundNearestTiesToEven
            (CF_exp a_ack!107)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd0000000000000)
                    a!1)))))

(check-sat)
(exit)
