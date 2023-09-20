(declare-fun c_ack!173 () (_ BitVec 64))
(declare-fun a_ack!174 () (_ BitVec 32))
(declare-fun b_ack!172 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!173) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!174 #xffffffff)))
(assert (not (= #xffffffff a_ack!174)))
(assert (= #x00000000 a_ack!174))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!173) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!173) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       (CF_acos c_ack!173)
                       ((_ to_fp 11 53) b_ack!172)))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe9884533d43651)
                                   (CF_acos c_ack!173)))))
      (a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!173))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!2)))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!3))))

(check-sat)
(exit)
