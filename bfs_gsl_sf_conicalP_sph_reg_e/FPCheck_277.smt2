(declare-fun c_ack!1125 () (_ BitVec 64))
(declare-fun a_ack!1126 () (_ BitVec 32))
(declare-fun b_ack!1124 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1125) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1126 #xffffffff)))
(assert (not (= #xffffffff a_ack!1126)))
(assert (= #x00000000 a_ack!1126))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1125) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1125) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos c_ack!1125)
                                  ((_ to_fp 11 53) b_ack!1124)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1124)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq ((_ to_fp 11 53) #x3fe9884533d43651) a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!1125)
                                   ((_ to_fp 11 53) b_ack!1124)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!1125)
                                   ((_ to_fp 11 53) b_ack!1124))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!1125)
                                   ((_ to_fp 11 53) b_ack!1124)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.abs (fp.mul roundNearestTiesToEven
                         (CF_acos c_ack!1125)
                         ((_ to_fp 11 53) b_ack!1124))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!1125)
                                   ((_ to_fp 11 53) b_ack!1124)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe9884533d43651)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1124)))
                   (CF_sinh (fp.mul roundNearestTiesToEven
                                    (CF_acos c_ack!1125)
                                    ((_ to_fp 11 53) b_ack!1124))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cb0000000000000) a!1)
    (fp.abs a!2))))

(check-sat)
(exit)
