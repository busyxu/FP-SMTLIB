(declare-fun c_ack!286 () (_ BitVec 64))
(declare-fun a_ack!287 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!286) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!287 #xffffffff)))
(assert (= #xffffffff a_ack!287))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!286) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!286) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!286))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4008000000000000))
    #x3cb0000000000000))))

(check-sat)
(exit)
