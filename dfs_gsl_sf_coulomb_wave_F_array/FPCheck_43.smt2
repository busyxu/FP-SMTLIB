(declare-fun d_ack!310 () (_ BitVec 64))
(declare-fun b_ack!309 () (_ BitVec 32))
(declare-fun a_ack!312 () (_ BitVec 64))
(declare-fun c_ack!311 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!310) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!309)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!311)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!311)
                                   ((_ to_fp 11 53) c_ack!311))))))
  (FPCHECK_FMUL_ACCURACY a!1 #x4000000000000000)))

(check-sat)
(exit)
