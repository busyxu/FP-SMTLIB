(declare-fun c_ack!4152 () (_ BitVec 64))
(declare-fun a_ack!4153 () (_ BitVec 32))
(declare-fun b_ack!4151 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4152) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4153 #xffffffff)))
(assert (= #xffffffff a_ack!4153))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4152) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!4151) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4152) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4152) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) c_ack!4152))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!4152)))
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!4152))))))
  (not (fp.geq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!4152)))
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!4152))))))
  (fp.geq a!1 ((_ to_fp 11 53) #x3feffffff8000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!4152)))
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   (CF_acos c_ack!4152))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    #x3fa2619b1b7df892)))

(check-sat)
(exit)
