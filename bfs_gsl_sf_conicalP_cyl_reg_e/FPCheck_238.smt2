(declare-fun c_ack!987 () (_ BitVec 64))
(declare-fun a_ack!988 () (_ BitVec 32))
(declare-fun b_ack!986 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!987) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!988 #xffffffff)))
(assert (= #xffffffff a_ack!988))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!987) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!986) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!987) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!986) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!987))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3cb0000000000000))
    #x4000000000000000))))

(check-sat)
(exit)
