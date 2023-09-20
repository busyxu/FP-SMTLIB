(declare-fun b_ack!231 () (_ BitVec 32))
(declare-fun a_ack!233 () (_ BitVec 32))
(declare-fun c_ack!232 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!233 b_ack!231))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!233 b_ack!231))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt b_ack!231 #x00000000)))
(assert (not (bvslt a_ack!233 b_ack!231)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!232) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!232) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!233))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #xc085d32bdd7abcd2))))))
(assert (= #x00000000 b_ack!231))
(assert (= a_ack!233 b_ack!231))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!232))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3cb0000000000000)
                    a!1))
    #x4000000000000000)))

(check-sat)
(exit)
