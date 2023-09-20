(declare-fun c_ack!127 () (_ BitVec 64))
(declare-fun b_ack!126 () (_ BitVec 32))
(declare-fun a_ack!128 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) c_ack!127) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!126)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!127) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!128))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!126))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!128))
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!126))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!126)
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!126)
       (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven b_ack!126))))
(assert (FPCHECK_FMUL_ACCURACY
  #x400921fb54442d18
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!126)))

(check-sat)
(exit)
