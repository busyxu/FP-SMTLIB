(declare-fun x1_ack!1018 () (_ BitVec 64))
(declare-fun x0_ack!1026 () (_ BitVec 64))
(declare-fun y0_ack!1019 () (_ BitVec 64))
(declare-fun x_ack!1024 () (_ BitVec 64))
(declare-fun y_ack!1025 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1022 () (_ BitVec 64))
(declare-fun z1_ack!1021 () (_ BitVec 64))
(declare-fun z3_ack!1023 () (_ BitVec 64))
(declare-fun z0_ack!1020 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1026) ((_ to_fp 11 53) x1_ack!1018))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1019) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1024) ((_ to_fp 11 53) x0_ack!1026))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1024) ((_ to_fp 11 53) x1_ack!1018)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1025) ((_ to_fp 11 53) y0_ack!1019))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1025) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1024)
                           ((_ to_fp 11 53) x0_ack!1026))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1018)
                           ((_ to_fp 11 53) x0_ack!1026))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!1025)
                           ((_ to_fp 11 53) y0_ack!1019))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!1019)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!1020)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!1023)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!1021))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!1022))))))

(check-sat)
(exit)
