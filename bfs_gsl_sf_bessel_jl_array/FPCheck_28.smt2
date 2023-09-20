(declare-fun a_ack!103 () (_ BitVec 32))
(declare-fun b_ack!102 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!103 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!103) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!103)))
(assert (= #x00000000 a_ack!103))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!102))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!102))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (CF_sin b_ack!102)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!102)
                                   ((_ to_fp 11 53) b_ack!102))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.abs (fp.div roundNearestTiesToEven
                    (CF_cos b_ack!102)
                    ((_ to_fp 11 53) b_ack!102))))))

(check-sat)
(exit)
