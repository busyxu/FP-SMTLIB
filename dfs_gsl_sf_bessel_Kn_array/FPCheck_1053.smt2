(declare-fun a_ack!4325 () (_ BitVec 32))
(declare-fun b_ack!4323 () (_ BitVec 32))
(declare-fun c_ack!4324 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!4325 #x00000000)))
(assert (not (bvslt b_ack!4323 a_ack!4325)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!4323)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4324) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!4324))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c7dc75547a9e207))))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3c7dc75547a9e207))))))
  (FPCHECK_FADD_OVERFLOW
    a!4
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!6
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x3cb080aaec279da4))))))))

(check-sat)
(exit)
